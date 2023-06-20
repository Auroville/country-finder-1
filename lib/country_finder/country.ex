defmodule CountryFinder.Country do
  @enforce_keys [
    :name,
    :flag,
    :region,
    :capital,
    :population
  ]

  defstruct [
    :name,
    :flag,
    :region,
    :capital,
    :population
  ]

end
