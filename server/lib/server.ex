defmodule Server.Endpoint do
  use GRPC.Endpoint

  intercept GRPC.Logger.Server
  run Server
end

defmodule Server do
  use GRPC.Server, service: Dc.MathService.Service

  def sum(%{sum: %{a: a, b: b}} = request, _stream) do
    Dc.SumResponse.new(result: a + b)
  end
end
