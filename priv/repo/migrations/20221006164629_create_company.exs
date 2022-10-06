defmodule Elixers.Repo.Migrations.CreateCompany do
  use Ecto.Migration

  def change do
    create table(:company) do
      add :name, :string
      add :short_description, :string
      add :industry, :string

      timestamps()
    end
  end
end
