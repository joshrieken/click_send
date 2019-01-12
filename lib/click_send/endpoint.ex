defmodule ClickSend.Endpoint do

  defmacro __using__(_opts) do
    quote do

      defp build_authorization_header(opts) do
        case Keyword.get(opts, :credentials) do
          nil -> [{"Authorization", ClickSend.build_authorization(nil)}]
          val -> [{"Authorization", ClickSend.build_authorization(val)}]
        end
      end

    end
  end

end
