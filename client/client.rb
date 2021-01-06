require 'grpc'

require_relative 'math_pb'
require_relative 'math_services_pb'

include Dc

def main
  stub = MathService::Stub.new('localhost:50051', :this_channel_is_insecure)

  sum = Sum.new({a: 5, b: 5})
  request = SumRequest.new(sum: sum)
  response = stub.sum(request)

  puts "Response: #{response.result}"
end

main