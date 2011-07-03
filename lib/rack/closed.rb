module Rack
  class Closed
    def initialize(app)
      @app = app
    end

    def call(env)
      if (9..17).include?(Time.now.hour)
        @app.call(env)
      else
        file = ::File.read("#{::File.expand_path(::File.dirname(__FILE__))}/views/closed.html")
        [503, {"Content-Type" => "text/html"}, file]
      end
    end
  end
end
