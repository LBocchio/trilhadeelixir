defmodule Inmana.WelcomerTest do

  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do

    test "when the user is special, returns a special message" do
      params = %{"name" => "banana", "age" => "42"}
      expected_result = {:ok, "when the user is special, retorns a special message"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is not special, returns a message" do
      params = %{"name" => "rafael", "age" => "25"}
      expected_result = {:ok, "Welcome, Rafael"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

    test "when the user is underage, returns an error" do
      params = %{"name" => "rafael", "age" => "17"}
      expected_result = {:error, "You shall not pass rafael"}

      result = Welcomer.welcome(params)

      assert result == expected_result
    end

  end

end