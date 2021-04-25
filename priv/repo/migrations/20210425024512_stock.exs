defmodule Inmana.Repo.Migrations.Stock do
  use Ecto.Migration

  def change do
    create table(:stock) do
      add :unid_mes, :string
      add :unid_qtd, :integer
      add :supply_id, references(:supply, type: :binary_id)

      timestamps()
    end


  end
end
