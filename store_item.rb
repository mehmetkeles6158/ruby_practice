# item1 = {:name => "IZZE" , :price => 1.99}
# item2 = {:name => "Tortilla" , :price => 2.99}
# item3 = {:name => "Butter" , :price => 4.99}

# p "#{item1[:name] } is sold with price of $ #{item2[:price]} at our store "
# p "#{item2:name} is sold with price of $ #{item2:price} "

class Item

  #getter/reader methods

  def item_id
    @item_id
  end

  def item_name
    @item_name
  end

  def item_price
    @item_price
  end

  def item_stock
    @item_stock
  end

  # setter/ writer methods

  def item_id=(i)
    @item_id = i
  end

  def item_name=(n)
    @item_id = n 
  end

  def item_price=(p)
    @item_id = p
  end

  def item_stock=(s)
    @item_id = s
  end

  def initialize(input_item_id, input_item_name, input_item_price, input_item_stock)
    @item_id = input_item_id
    @item_name = input_item_name
    @item_price = input_item_price
    @item_stock = input_item_stock
  end

  def print_info
    p "#{item_name} will be sold with #{item_price}"
  end

  def tax_price
  end

end

item1 = Item.new(11, "IZZE", 1.99 , true)

item1.print_info




