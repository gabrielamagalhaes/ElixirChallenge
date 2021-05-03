defmodule BankProject.Repo do
  use Ecto.Repo,
    otp_app: :bank_project,
    adapter: Ecto.Adapters.Postgres
end
