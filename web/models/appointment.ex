defmodule Earlgrey.Appointment do
  use Earlgrey.Web, :model

  schema "appointments" do
    field :title, :string
    field :date, Ecto.Date

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :date])
    |> validate_required([:title, :date])
  end
end
