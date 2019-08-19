defmodule SampleApp.Media.Image do
  use Ecto.Schema
  import Ecto.Changeset


  schema "images" do
    field :name, :string
    field :pathname, :string

    timestamps()
  end

  @doc false
  def changeset(image, attrs) do
    image
    |> cast(attrs, [:name, :pathname])
    |> validate_required([:name, :pathname])
  end
end
