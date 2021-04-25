defmodule Inmana.RestaurantTest do
  use Inmana.DataCase

  alias Ecto.Changeset
  alias Inmana.Restaurant

  describe "changeset/1" do
    test "when all params are valid, returns a valid changeset" do
      params = %{name: "Siri cascudo", email: "siri@cascudo.com"}

      response = Restaurant.changeset(params)


      assert %Changeset{changes: %{email: "siri@cascudo.com", name: "Siri cascudo"}, valid?: = true}
    end

    test "when they are invalid params, returns an error" do
      params = %{email: "siri@cascudo.com"}

      response = Restaurant.changeset(params)


      assert %Changeset{changes: %{email: "siri@cascudo.com", name: "Siri cascudo"}, valid?: = true}
    end

    end
end
