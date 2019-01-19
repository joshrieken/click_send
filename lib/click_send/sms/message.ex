defmodule ClickSend.SmsMessage do

  defstruct ~w(body to)a

  def new(to, body) when byte_size(to) == 11 do
    new("+#{to}", body)
  end

  def new(to, body) when byte_size(to) == 10 do
    new("+1#{to}", body)
  end

  def new(to, body) do
    %__MODULE__{
      body: ClickSend.MessageFormatter.call(body),
      to: to
    }
  end

end
