class Item
  def initialize(id,name,price)
    @id = id
    @name = name
    @price = price
  end

  def id
    @id
  end

  def name
    @name
  end

  def price
    @price
  end
    
end


items  = [
  Item.new(01,"IZZE",1.99), Item.new(02,"Tortilla",2.99)
]
p items


puts "[C]create " + "[R]read " + "[U]pdate " + "[D]elete " + "[Q]uit: q"

while true
  word = gets.chomp
  if word == "R"
    p items
  end
  if word == "C"
    p "Add your item"
    puts
    p "id:"
    id = gets.chomp.to_i
    puts
    p "name:"
    name = gets.chomp
    puts
    p "price:"
    price = gets.chomp.to_f
    p items << Item.new(id,name,price)
  end
  
  if word == "q"
    break
  end
end
