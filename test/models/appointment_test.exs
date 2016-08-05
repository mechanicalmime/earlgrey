defmodule Earlgrey.AppointmentTest do
  use Earlgrey.ModelCase

  alias Earlgrey.Appointment

  @valid_attrs %{date: %{day: 17, month: 4, year: 2010}, title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Appointment.changeset(%Appointment{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Appointment.changeset(%Appointment{}, @invalid_attrs)
    refute changeset.valid?
  end
end
