class GuidelinesController < ApplicationController
  caches_page :index, :show

  def index
    render(:index, :locals => { :list => list })
  end

  def show
    render(item)
  end

  private

    def basepath
      @basepath ||= Rails.root.join('app', 'views', 'guidelines')
    end

    def item
      @item ||= "guidelines/#{params[:id].to_s.downcase}"
    end

    def list
      @list ||= Dir.glob(File.join(basepath, "**", "*.html.*")).map { |fullpath| fullpath.sub(/#{basepath}\//, '').sub(/\.html.+$/, '') }
    end
end
