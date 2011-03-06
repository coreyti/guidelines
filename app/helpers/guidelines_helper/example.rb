module GuidelinesHelper
  class Example
    attr_reader :example_id

    def initialize(example_id)
      @example_id = example_id
    end

    def selector
      "[data-guideline-example='#{example_id}']"
    end
  end
end
