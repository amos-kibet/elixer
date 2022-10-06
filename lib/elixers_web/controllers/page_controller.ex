defmodule ElixersWeb.PageController do
  use ElixersWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
