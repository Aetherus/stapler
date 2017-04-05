defmodule Stapler.Test.DummyDefinition do
  use Stapler.Definition

  accept_extensions ~w(.jpg .png .gif)

  styles :original, :thumbnail

  storage_path(filename, style) do
    "test/tmp/#{SecureRandom.uuid()}/#{style}#{Path.extname(filename)}"
  end

  transform into: :thumbnail do
    {:convert, "-strip -thumbnail 100x100^ -gravity center -extent 100x100<"}
  end

end