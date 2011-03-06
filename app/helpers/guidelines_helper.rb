module GuidelinesHelper
  def guideline_for(name, *args, &proc)
    raise ArgumentError, "Missing block" unless block_given?

    # options = args.extract_options!
    raw(GuidelinesHelper::Builder.new(name, self, proc).to_s)
  end
end
