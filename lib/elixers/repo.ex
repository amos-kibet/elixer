defmodule Elixers.Repo do
  use Ecto.Repo,
    otp_app: :elixers,
    adapter: Ecto.Adapters.Postgres
end
