defmodule Elixer.Companies.Company do
  use Ecto.Schema
  import Ecto.Changeset

  schema "company" do
    field :name, :string
    field :short_description, :string
    field :industry, :string

    timestamps()
  end


  def changeset(company, attrs \\ %{}) do
    company
    |> cast(attrs, [:name, :short_description, :industry])
    |> validate_required([:name, :short_description, :industry])
  end
end
