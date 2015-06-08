
class ShoppingCart
	@@prices_list = {
		:apple	 	=> 10,
		:orange 	=> 5,
		:grape		=> 15,
		:banana		=> 20,
		:watermelon	=> 50
	}

	def initialize
		@cart = Hash.new 0	
	end

	def get_item_price item
		@@prices_list[item]
	end

	def add_item_to_cart item 
		@cart[item] += 1
	end	

	def show
		shopping_cart_calculated = calculate_shopping_cart
		
	end

	def calculate_shopping_cart
		calculated_cart = {}
		@cart.each do |key,value|
		calculated_cart[key] = get_item_price(key) * value
			
	end	

	
	def apply_apple_deal
		if @cart[:apple] > 1
			@cart[:apple] = (@cart[:apple]/2.0).round
		end
	end

	def apply_orange_deal
		oranges = @cart[:orange]
		if(oranges > 2)
			aux = (oranges/3).floor
			@cart[:orange] -= aux
		end
	end

	def apply_grape_deal
		grapes = @cart[:grape]
		if(grapes > 3)
			aux = (grapes/4).floor
			@cart[:banana] -= aux
			@cart[:banana] < 0 ? @cart[:banana] =0 : false
		end
	end

end

shopping_cart = ShoppingCart.new

shopping_cart.add_item_to_cart :apple
shopping_cart.add_item_to_cart :apple
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :orange
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :grape
shopping_cart.add_item_to_cart :banana


shopping_cart.show
puts "The shopping_cart cost"
