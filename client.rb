$LOAD_PATH.unshift '.'

require 'grpc'
require 'api_pb'
require 'api_services_pb'
 
stub = Simplekeyvalue::KeyValue::Stub.new(
 '0.0.0.0:50052', :this_channel_is_insecure
)
 
request = Simplekeyvalue::GetRequest.new(key: "fish")
response = stub.get(request)
puts response.body
