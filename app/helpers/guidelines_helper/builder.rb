module GuidelinesHelper
  class Builder
    attr_reader :name, :template, :examples

    def initialize(name, template, proc)
      @name, @template, @proc = name, template, proc
      @examples = []

      proc.call(self)
    end

    def to_s
      @examples.join("\n")
    end

    def example(&block)
      @examples << decorate(template.capture(GuidelinesHelper::Example.new(example_id), &block)) ; nil
    end

    private

      def decorate(html)
        fragment = Nokogiri::HTML::DocumentFragment.parse(html)
        fragment.css('*').each do |node|
          node.set_attribute('data-guideline-example', example_id)
        end

        fragment.to_html
      end

      def example_id
        (@examples.length + 1).to_s
      end

      def safe_name
        name.gsub(/[#\/]/, '_')
      end
  end
end
