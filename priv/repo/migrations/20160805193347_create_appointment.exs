defmodule Earlgrey.Repo.Migrations.CreateAppointment do
  use Ecto.Migration

  def change do
    create table(:appointments) do
      add :title, :string
      add :date, :date

      timestamps()
    end

  end
end
