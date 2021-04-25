defmodule InmanaWeb.StockController do
  use InmanaWeb, :controller

  alias Inmana.Stock

  alias InmanaWeb.FallbackController

  action_fallback FallbackController

  def create(conn, params) do
    with {:ok, %Stock{} = stock} <- Inmana.create_stock(params) do
      conn
      |> put_status(:created)
      |> render("create.json", stock: stock)

    end
  end

  def show(conn, %{"id" => uuid}) do
    with {:ok, %Stock{} = stock} <- Inmana.get_stock(uuid) do
      conn
      |> put_status(:ok)
      |> render("show.json", stock: stock)

    end
  end

end
