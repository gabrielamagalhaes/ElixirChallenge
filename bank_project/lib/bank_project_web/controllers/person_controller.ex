defmodule BankProjectWeb.PersonController do
  use BankProjectWeb, :controller

  def show(conn, %{"messenger" => messenger}) do
    json(conn, %{id: messenger})
  end
end
