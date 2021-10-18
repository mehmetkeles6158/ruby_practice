
index = 0

while index < 11
  p index
  index += 1
end

puts

recipes = ["philly cheesesteak", "Skew Eggplant", "Apple Pie","Crepes"]
languages = ["English", "Mandarin", "Turkish","French"]


if recipes.length > 10 && languages.length > 5
  p "They are able to date"
else
  p "Unfortunetely, They can't"
end

recipe = ""

recipes.each do |food|
  if food == "Crepes"
     recipe = food
     p recipe
  end
end

language = ""

languages.each do|lang|
  if lang == "French"
    language = lang
    p language
  end
end

if recipe == "Crepes" || language == "French"
  p "They can marry each other!"
end
