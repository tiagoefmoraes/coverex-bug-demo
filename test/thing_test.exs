defmodule ThingTest do
  use ExUnit.Case
  doctest Thing

  test "Thing.new generates ID that is SHA-256 hash of payload" do
    c = Thing.new("123456789")
    assert c.payload == "123456789"
    assert c.id == "15e2b0d3c33891ebb0f1ef609ec419420c20e320ce94c65fbc8c3312448eb225"
    assert c.size == 9
  end
end
