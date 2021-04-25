defmodule Inmana.Stock do

  use Ecto.Schema
  import Ecto.Changeset

  alias Inmana.Supply

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id

  @required_params [:unid_mes, :unid_qtd, :supply_id]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}


  schema "stock" do
    field :unid_mes, :string
    field :unid_qtd, :integer

    belongs_to :supply, Supply



    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |>cast(params, @required_params)
    |>validate_required(@required_params)


  end

end
