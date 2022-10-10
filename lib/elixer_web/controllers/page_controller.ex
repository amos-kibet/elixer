defmodule ElixerWeb.PageController do
  use ElixerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
