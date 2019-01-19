defmodule ClickSend.MessageFormatter do

  @replacement "<br>"

  def call(msg) do
    msg
    |> String.replace("\r\n", @replacement)
    |> String.replace(~r/[\r\n]/, @replacement)
  end

end
