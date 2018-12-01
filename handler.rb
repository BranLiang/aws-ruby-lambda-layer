require "pg"

def hello(event:, context:)
  {
    statusCode: 200, body: JSON.generate("Hello World")
  }
end