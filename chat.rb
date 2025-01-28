pp "Howdy!"
require "openai"
require "dotenv/load"

client = OpenAI::Client.new(access_token: ENV.fetch("OPEN_AI_KEY"))
pp client


message_list = [
  {
    "role" => "system",
    "content" => "You are a helpful assistant who talks like Shakespeare."
  },
  {
    "role" => "user",
    "content" => "Hello! What are the best spots for pizza in Chicago?"
  }
]

# Call the API to get the next message from GPT
api_response = client.chat(
  parameters: {
    model: "gpt-4",
    messages: message_list
  }
)

pp api_response
