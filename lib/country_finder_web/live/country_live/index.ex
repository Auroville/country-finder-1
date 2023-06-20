defmodule CountryFinderWeb.CountryLive.Index do
  use CountryFinderWeb, :live_view

  alias CountryFinder.CountryFinder


  def mount(_params, _session, socket) do
    countries = CountryFinder.all_countries()
    {:ok,
    socket
    |> assign(:countries, countries)
  }
  end

end
