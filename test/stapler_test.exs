defmodule StaplerTest do
  use ExUnit.Case
  doctest Stapler

  alias Stapler.Test.DummyDefinition

  @tmpfile %{path: "test/support/elixir.png", filename: "elixir.png", content_type: "image/png"}
  test "store" do
    {:ok, %{original: original_path, thumbnail: thumbnail_path}} = Stapler.store(DummyDefinition, @tmpfile)
    assert File.exists?(original_path)
    assert File.exists?(thumbnail_path)
  end
end
