defmodule Inmana.Repo.Migrations.Stock do
  use Ecto.Migration

  def change do
    create table(:stock) do
      add :unid_mes, :string
      add :unid_qtd, :integer

      add :supplies_id, references(:supplies, type: :binary_id)

      timestamps()
    end


  end
end
