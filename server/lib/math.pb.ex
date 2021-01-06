defmodule Dc.Sum do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          a: float | :infinity | :negative_infinity | :nan,
          b: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:a, :b]

  field :a, 1, type: :float
  field :b, 2, type: :float
end

defmodule Dc.SumRequest do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          sum: Dc.Sum.t() | nil
        }

  defstruct [:sum]

  field :sum, 1, type: Dc.Sum
end

defmodule Dc.SumResponse do
  @moduledoc false
  use Protobuf, syntax: :proto3

  @type t :: %__MODULE__{
          result: float | :infinity | :negative_infinity | :nan
        }

  defstruct [:result]

  field :result, 1, type: :float
end

defmodule Dc.MathService.Service do
  @moduledoc false
  use GRPC.Service, name: "dc.MathService"

  rpc :Sum, Dc.SumRequest, Dc.SumResponse
end

defmodule Dc.MathService.Stub do
  @moduledoc false
  use GRPC.Stub, service: Dc.MathService.Service
end
