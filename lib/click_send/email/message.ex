defmodule ClickSend.EmailMessage do

  defstruct ~w(
    body
    from
    subject
    to
  )a

  def new(tos, from_id, from_name, subject, body) do
    %__MODULE__{
      body: body,
      from: ClickSend.EmailFrom.new(from_id, from_name),
      subject: subject,
      to: build_tos(tos)
    }
  end

  defp build_tos(tos) do
    tos
    |> List.wrap()
    |> Enum.map(fn({name, email}) ->
         ClickSend.EmailTo.new(email, name)
       end)
  end

end
