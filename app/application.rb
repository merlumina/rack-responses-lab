class Application

    def call(env)
        resp = Rack::Response.new

        current_hour = Time.now.hour

        if (0..11).include?(current_hour)
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end

end