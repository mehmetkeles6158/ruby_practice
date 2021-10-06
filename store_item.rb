# item1 = {:name => "IZZE" , :price => 1.99}
# item2 = {:name => "Tortilla" , :price => 2.99}
# item3 = {:name => "Butter" , :price => 4.99}

# p "#{item1[:name] } is sold with price of $ #{item2[:price]} at our store "
# p "#{item2:name} is sold with price of $ #{item2:price} "

class Item

  # def item_id
  #   @item_id
  # end

  # def item_name
  #   @item_name
  # end

  # def item_price
  #   @item_price
  # end

  # def item_stock
  #   @item_stock
  # end

  # setter/ writer methods

  # def item_id=(i)
  #   @item_id = i
  # end

  # def item_name=(n)
  #   @item_id = n 
  # end

  # def item_price=(p)
  #   @item_id = p
  # end

  # def item_stock=(s)
  #   @item_id = s
  # end


  #getter/reader methods

  attr_reader :item_id, :item_name, :item_price, :item_stock
  #setter/writer methods
  attr_writer :item_id, :item_name, :item_price, :item_stock


  def initialize(input_options)
    @item_id = input_options[:item_id]
    @item_name = input_options[:item_name]
    @item_price = input_options[:item_price]
    @item_stock = input_options[:item_stock]
  end

  def print_info
    p "#{item_name} will be sold with #{item_price}"
  end

  def tax_price
    @item_price *= 1.08
  end

end

item1 = Item.new(item_id: 11, item_name: "IZZE" , item_price:1.99 , item_stock: true )

# item1.print_info

# item1.item_id = 22

# p item1.item_id

# item1.print_info

# item1.item_price = 2.99

# item1.print_info

p item1.tax_price

item1.print_info



