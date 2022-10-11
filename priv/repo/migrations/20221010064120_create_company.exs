defmodule Elixer.Repo.Migrations.CreateCompany do
  use Ecto.Migration

  def change do
    create table(:company) do
      add :name, :string
      add :url, :string
      add :brief_description, :string
      add :industry, :string
      add :tech_stack, :string

      timestamps()
    end
  end
end
