defmodule SampleApp.Repo.Migrations.CreateImages do
  use Ecto.Migration

  def change do
    create table(:images) do
      add :name, :string
      add :pathname, :string

      timestamps()
    end

  end
end
