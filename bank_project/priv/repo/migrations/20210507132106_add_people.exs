defmodule BankProject.Repo.Migrations.AddPeople do
  use Ecto.Migration

  def change do
    create table("people") do
      add :name, :string, null: false
      add :birth_date, :date, null: false
      add :address, :string, null: false
      add :balance, :integer, null: false

      timestamps()
    end
  end
end
