class ApiConstraints
  def initialize(options)
    @version = options[:version]
    @defaults = options[:defaults]
  end

  def matches?(req)
    @default || req.headers['Accept'].include?("application/vnd.api.v#{@version}")
  end
end