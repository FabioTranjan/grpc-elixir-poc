# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: math.proto for package 'dc'

require 'grpc'
require 'math_pb'

module Dc
  module MathService
    class Service

      include GRPC::GenericService

      self.marshal_class_method = :encode
      self.unmarshal_class_method = :decode
      self.service_name = 'dc.MathService'

      rpc :Sum, ::Dc::SumRequest, ::Dc::SumResponse
    end

    Stub = Service.rpc_stub_class
  end
end
