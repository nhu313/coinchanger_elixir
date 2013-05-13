Code.require_file "../test_helper.exs", __FILE__

defmodule CoinchangerTest do
	use ExUnit.Case

	test "returns nothing when amount is less than the smallest coin value" do
		assert [] == Coinchanger.get_change(0)
	end

	test "returns a penny when amount is 1 cent" do
		assert [1] == Coinchanger.get_change(1)
	end

	test "returns 2 pennies when amount is 2 cents" do
		assert [1, 1] == Coinchanger.get_change(2)
	end

	test "returns 4 pennies when amount is 4 cents" do
		assert [1, 1, 1, 1] == Coinchanger.get_change(4)
	end

	test "returns a nickle when amount is 5 cents" do
		assert [5] == Coinchanger.get_change(5)
	end

	test "returns a nickle and a penny when amount is 6 cents" do
		assert [5, 1] == Coinchanger.get_change(6)
	end

	test "returns a dime when amount is 10 cents" do
		assert [10] == Coinchanger.get_change(10)
	end

	test "returns a dime and a penny when amount is 11 cents" do
		assert [10, 1] == Coinchanger.get_change(11)
	end

	test "returns a dime and a nickle when amount is 15 cents" do
		assert [10, 5] == Coinchanger.get_change(15)
	end

	test "returns 2 dimes when amount is 20 cents" do
		assert [10, 10] == Coinchanger.get_change(20)
	end

	test "returns a quarter when amount is 25 cents" do
		assert [25] == Coinchanger.get_change(25)
	end

	test "returns a quarter and a penny when amount is 26 cents" do
		assert [25, 1] == Coinchanger.get_change(26)
	end

	test "returns a quarter, a dime, a nickle, and a penny when amount is 41 cents" do
		assert [25, 10, 5, 1] == Coinchanger.get_change(41)
	end

	test "returns 3 quarters, 2 dimes, and 4 pennies when amount is 99 cents" do
		assert [25, 25, 25, 10, 10, 1, 1, 1, 1] == Coinchanger.get_change(99)
	end
end