defmodule SampleAppWeb.Router do
  use SampleAppWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SampleAppWeb do
    pipe_through :api
  end
end
