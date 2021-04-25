defmodule InmanaWeb.RestaurantsControllerTest do

use InmanaWeb.ConnCase, async: true

describe "create/2"

test "when all params are valid, creates the user", %{conn: conn} do
  params = %{name: "Siri cascudo", email: "siri@cascudo.com"}

  response = conn
  |> post(Routes.restaurants_path(conn, :create, params))
  |> json_response(:created)


  assert response %{
    "message" => "Restaurant created!",
      "restaurant" => %{
        "email" => "siri@cascudo.com",
        "id" => id,
        "name" => "Siri Cascudo"
      }
  } = response

    end


test "when they are invalid, returns an error", %{conn: conn} do
  params = %{email: "siri@cascudo.com"}

  expected_response = %{"message" => %{"name" => ["can't be blank"}]}

  response = conn
  |> post(Routes.restaurants_path(conn, :create, params))
  |> json_response(:bad_request)


  assert response == expected_response
    end
end
