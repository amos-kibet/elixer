defmodule Elixer.Companies do
  import Ecto.Query, warn: false
  alias Elixer.Repo
  alias Elixer.Companies.Company

  @doc """
  List all companies using Elixir
  """
  def list_all, do: Repo.all(Company)
  @doc """
  Fetch a company with the given params
  """
  def get_by!(params), do: Repo.get_by(Company, params)

  @doc """
  Creates a company
  """
  def create_company(attrs \\ %{}) do
    %Company{}
    |> Company.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates the give company's data
  """
  def update_company(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes the given company's data
  """
  def delete_company(%Company{} = company), do: Repo.delete(company)

  @doc """
  Keeps track of changes
  """
  def change_company(%Company{} = company, attrs \\ %{}) do
    Company.changeset(company, attrs)
  end
end
