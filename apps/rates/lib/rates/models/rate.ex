defmodule Rates.Models.Rate do
  @moduledoc """
  Blockchain currency rate
  """

  use Ecto.Schema

  @primary_key {:id, :binary_id, autogenerate: true}

  schema "rates" do
    field(:refreshed_at, :utc_datetime)
    field(:price_usd, :decimal)

    belongs_to(:currency, Rates.Models.Currency, type: :string)
    timestamps()
  end
end
