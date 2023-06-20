defmodule CountryFinder.CountryFinder do
  alias CountryFinder.CountryClient
  alias CountryFinder.Country

  def all_countries() do
    case CountryClient.all_countries() do
      {:ok, %Finch.Response{status: 200, body: body}} ->
        body
        |> Jason.decode!()
        |> maps_to_structs()
    end
  end

  defp maps_to_structs(list_of_countries) do
    Enum.map(list_of_countries, fn country ->
      flag = get_in(country, ["flags", "svg"])
      name = get_in(country, ["name", "common"])
      region = country["region"]
      capital = country["capital"]
      population = country["populaion"]

      %Country{
        name: name,
        flag: flag,
        region: region,
        capital: capital,
        population: population
      }
    end)
  end
end
