defmodule Inmana do

  alias Inmana.Restaurants.Create, as: RestaurantCreate
  alias Inmana.Supplies.Create, as: SupplyCreate
  alias Inmana.Supplies.Get, as: SupplyGet
  alias Inmana.Stock.Create, as: StockCreate


defdelegate create_restaurant(params), to: RestaurantCreate, as: :call

defdelegate create_supply(params), to:  SupplyCreate, as: :call

defdelegate get_supply(params), to:  SupplyGet, as: :call

defdelegate create_stock(params), to:  StockCreate, as: :call

end
