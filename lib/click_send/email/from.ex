defmodule ClickSend.EmailFrom do

  defstruct ~w(
    email_address_id
    name
  )a

  def new(email_address_id, name) do
    %__MODULE__{
      email_address_id: email_address_id,
      name: name
    }
  end

end
