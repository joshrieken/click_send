defmodule ClickSend.SmsMessages do

  defstruct messages: []

  def new(%ClickSend.SmsMessage{} = msg) do
    %__MODULE__{
      messages: [msg]
    }
  end

end
