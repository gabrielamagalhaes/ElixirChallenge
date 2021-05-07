defmodule Schemas.Person do
  use Ecto.Schema

  # people is the DB table
  schema "people" do
    field :name, :string
    field :birth_date, :date
    field :address, :string
    field :balance, :integer

    timestamps()
  end
end
