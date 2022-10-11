defmodule Elixer.Companies do
  @moduledoc """
  Public API for company context
  """
  alias Elixer.Repo
  alias Elixer.Companies.Company

  @doc """
  Fetches all companies from the db
  """
  def get_all, do: Repo.all(Company)

  @doc """
  Fetches a company with the given params
  """
  def get_by!(params), do: Repo.get_by!(Company, params)

  @doc """
  Creates a company
  """
  def create(attrs \\ %{}) do
    %Company{}
    |> Company.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a company info
  """
  def update(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a company
  """
  def delete(%Company{} = company) do
    Repo.delete(company)
  end

  @doc """
  Track changes in changesets
  """
  def change_company(%Company{} = company, params) do
    Company.changeset(company, params)
  end
end
