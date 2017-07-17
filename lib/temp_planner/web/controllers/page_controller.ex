defmodule TempPlanner.Web.PageController do
  use TempPlanner.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
