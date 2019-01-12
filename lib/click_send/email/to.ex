defmodule ClickSend.EmailTo do

  defstruct ~w(
    email
    name
  )a

  def new(email_address, name) do
    %__MODULE__{
      email: email_address,
      name: name
    }
  end

end
