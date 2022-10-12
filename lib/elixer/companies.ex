defmodule Elixer.Companies do
  @moduledoc """
  Public API for company context
  """
  alias Elixer.Repo
  alias Elixer.Companies.Company

  @doc """
  Fetches all companies from the db
  TODO:
    running Repo.all(Company) in iex returns errors,
    running Companies.get_all, returns db data as expected
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
  TODO: Fix this API, not working on iex
  """
  def update(%Company{} = company, attrs) do
    company
    |> Company.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a company
  TODO: Fix this API, not working on iex
  """
  def delete(%Company{} = company) do
    Repo.delete(company)
  end

  @doc """
  Track changes in changesets
  """
  def change_company(%Company{} = company, attrts \\ %{}) do
    Company.changeset(company, attrts)
  end
end
