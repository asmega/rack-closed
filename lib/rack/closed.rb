module Rack
  class Closed
    def initialize(app)
      @app = app
    end

    def call(env)
      hour = Time.now.hour

      if hour < 9 || hour > 17
        file = File.read("#{File.expand_path(File.dirname(__FILE__))}/views/closed.html")
        [503, {"Content-Type" => "text/html"}, file]
      else
        @app.call(env)
      end
    end
  end
end
