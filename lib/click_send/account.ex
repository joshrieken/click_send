defmodule ClickSend.Account do

  def show do
    ClickSend.get("/account")
  end

end
