defmodule Coinchanger do

	def get_change(amount) do
		get_change(amount, [], [25, 10, 5, 1])
	end

	def get_change(amount, changes, _) when amount < 1 do
		changes
	end

	def get_change(amount, changes, [coin | remaining_coins]) when amount < coin do
		get_change(amount, changes, remaining_coins)
	end

	def get_change(amount, changes, [coin | remaining_coins]) do
		get_change(amount - coin, changes ++ [coin], [coin | remaining_coins])
	end

end
