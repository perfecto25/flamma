require "kemal"

get "/" do
  "Hello World!"
end

get "/:name" do |env|

  name = env.params.url["name"]
  Log.info { "Log message with or without embedded #{name}" }
  render "src/views/hello.ecr"
  
end

Kemal.run