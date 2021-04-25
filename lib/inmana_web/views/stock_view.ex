defmodule InmanaWeb.StockView do
  use InmanaWeb, :view

  def render("create.json", %{stock: stock}) do
    %{
      message: "Stock created!",
      stock: stock
    }
  end


  def render("show.json", %{stock: stock}), do: %{stock: stock}
end
