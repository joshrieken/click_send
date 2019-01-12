defmodule ClickSend.AccountRecharge do

  def list_packages(country) do
    ClickSend.get("/recharge/packages?country=#{country}")
  end

  def purchase_package(package_id) do
    ClickSend.put("/recharge/purchase/#{package_id}")
  end

end
