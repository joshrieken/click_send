defmodule ClickSend.Email do

  use ClickSend.Endpoint

  def send(%ClickSend.EmailMessage{} = msg, opts \\ []) do
    ClickSend.post("/email/send", build_send_body(msg), build_authorization_header(opts))
  end

  defp build_send_body(msg), do: Poison.encode!(msg)

end
