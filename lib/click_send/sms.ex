defmodule ClickSend.Sms do

  use ClickSend.Endpoint

  def send(%ClickSend.SmsMessage{} = msg, opts \\ []) do
    ClickSend.post( "/sms/send", build_send_body(msg), build_authorization_header(opts))
  end

  defp build_send_body(msg) do
    msg
    |> ClickSend.SmsMessages.new()
    |> Poison.encode!()
  end

end
