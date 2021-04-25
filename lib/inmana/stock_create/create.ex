defmodule Inmana.Stock.Create do

  alias Inmana.{Repo, Stock}

  def call(params) do
    params
    |>Stock.changeset()
    |>Repo.insert()
    |>handle_insert()
  end

defp handle_insert({:ok, %Stock{}} = result), do: result
defp handle_insert({:error, result}), do: {:error, %{result: result, status: :bad_request}}

end
