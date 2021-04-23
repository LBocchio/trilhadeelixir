defmodule Inmana.Supplies.Get do
  alias Inmana.{Repo, Supply}

  def call(uuid) do
    case Ecto.UUID.cast(uuid) do
      {:ok, uuid} -> handle_success(uuid)
      :error -> handle_error("UUID is invalid!", :bad_request)
    end
  end

  defp handle_success(uuid) do
    Repo.get(Supply, uuid)
    |> handle_response()
  end

  defp handle_error(msg, status) when is_atom(status) do
    {:error, %{result: msg, status: status}}
  end

  defp handle_response(%Supply{} = supply) do
    {:ok, supply}
  end

  defp handle_response(nil) do
    handle_error("Supply not found!", :not_found)
  end
end
