defmodule Thing do
  defstruct [:id, :size, :payload]

  def new(payload) do
    %Thing{id: :crypto.hash(:sha256, payload) |> Base.encode16 |> String.downcase,
           size: byte_size(payload),
           payload: payload}
  end
end
