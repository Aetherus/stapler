defmodule Stapler.Definition do
  defmacro __using__(_) do
    quote do
      require Stapler.Definition
      @extensions nil
      @styles [:original]
      @transformations []
    end
  end

  defmacro accept_extensions(extensions) do
    quote bind_quoted: [extensions: extensions] do
      @extensions extensions
    end
  end

  defmacro styles(styles) do
    quote bind_quoted: [styles: styles] do
      @styles styles
    end
  end

  defmacro transform(opts \\ nil) do

  end
end