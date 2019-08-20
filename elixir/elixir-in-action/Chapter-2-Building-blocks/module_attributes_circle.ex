defmodule Circle do
  @moduledoc """
  Implements basic circle functions
  """
  @pi 3.14

  @doc """
  Computes the area of a circle
  """
  def area(r), do: r*r*@api

  @doc """
  Computes the circumference of a circle
  """
  def circumference(r), do: 2*r*@pi
end
