defmodule ElixerWeb.CompanyController do
  use ElixerWeb, :controller

  alias Elixer.Companies
  alias Elixer.Companies.Company

  @doc """
  Renders index view
  """
  def index(conn, _params) do
    companies = Companies.get_all()
    render(conn, "index.html", companies: companies)
  end

  @doc """
  Renders show view
  """
  def show(conn, %{"params" => params}) do
    companies = Companies.get_by!(params)
    render(conn, "show.html", companies: companies)
  end

  @doc """
  Renders input form to create a new company
  """
  def create(conn, %{"company" => params}) do
    {:ok, _company} = Companies.create(params)

    conn
    |> put_flash(:info, "Company profile created!")
    |> redirect(to: Routes.company_path(conn, :index))
  end

  @doc """
  Renders input form to create a new company
  """
  def new(conn, _params) do
    changeset = Companies.change_company(%Company{}, %{})
    render(conn, "new.html", changeset: changeset)
  end

  @doc """
  Updates the company info
  """
  def update(conn, %{"id" => id, "company" => params}) do
    company = Companies.get_by!(id)

    case Companies.update(company, params) do
      {:ok, company} ->
        conn
        |> put_flash(:info, "Company profile updated!")
        |> redirect(to: Routes.company_path(conn, :show, company))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", company: company, changeset: changeset)
    end
  end

  @doc """
  Deletes the company
  """
  def delete(conn, %{"id" => id}) do
    company = Companies.get_by!(id)
    {:ok, _company} = Companies.delete(company)

    conn
    |> put_flash(:info, "Company profile deleted!")
    |> redirect(to: Routes.company_path(conn, :index))
  end
end
