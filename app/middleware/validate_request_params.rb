class ValidateRequestParams
  def initialize(app)
    @app = app
  end

  def call(env)
    # Load the current request based on the request environment
    request = Rack::Request.new(env)

    # Ending with this line basically says continue executing the application
    # request as normal
    @app.call(env)
  end
end
