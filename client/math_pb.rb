# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: math.proto

require 'google/protobuf'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("math.proto", :syntax => :proto3) do
    add_message "dc.Sum" do
      optional :a, :float, 1
      optional :b, :float, 2
    end
    add_message "dc.SumRequest" do
      optional :sum, :message, 1, "dc.Sum"
    end
    add_message "dc.SumResponse" do
      optional :result, :float, 1
    end
  end
end

module Dc
  Sum = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dc.Sum").msgclass
  SumRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dc.SumRequest").msgclass
  SumResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("dc.SumResponse").msgclass
end
