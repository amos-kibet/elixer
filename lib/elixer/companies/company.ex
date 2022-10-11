defmodule Elixer.Companies.Company do
  use Ecto.Schema

  import Ecto.Changeset

  schema "company" do
    field :name, :string
    field :url, :string
    field :brief_description, :string
    field :industry, :string
    field :tech_stack, :string

    timestamps()
  end

  def changeset(company, attrs) do
    company
    |> cast(attrs, [:name, :url, :brief_description, :industry, :tech_stack])
    |> validate_format(
      :url,
      ~r/^https?:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)$/
    )
    |> validate_required([:name, :url, :brief_description, :tech_stack])
  end
end
