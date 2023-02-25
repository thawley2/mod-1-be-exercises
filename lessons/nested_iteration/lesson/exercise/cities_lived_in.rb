cities_lived_in = {
    michaela: ["Philadelphia", "Fort Collins", "Seattle"],
    mike: ["Denver", "Santa Fe", "Philadelphia", "Portland"],
    pamela: ["Lansing"],
    alex: ["Seattle", "Columbus", "Philadelphia", "Austin"]
}


# Problem #1: 
# Get a unique list of all of the cities that these humans have lived in  
# ["Philadelphia", "Fort Collins", "Seattle", "Denver", "Santa Fe", "Portland", "Lansing", "Columbus", "Austin"]

cities_array = []
cities_lived_in.each do |_, cities|
    cities.each do |city|
        cities_array << city
    end
end

# refactor
# p cities_lived_in.values.flatten.uniq


# Problem #2: 
# Write code that iterates through the `cities_lived_in` hash, and returns a list of  
# names of the humans who've lived in Philadelphia.
people = []

cities_lived_in.each do |name, cities|
    people << name.to_s.capitalize if cities.include?("Philadelphia")
end


# [:michaela, :mike, :salvador]
# or
# ["Michaela", "Mike", "Salvador"]




# Problem #3: 
# Create a hash that has the city as a key, and the number of people that live in it as it's value: 
city_lived = Hash.new(0)

cities_lived_in.each do |name, cities|
    cities.each do |city|
        city_lived[city] += 1
    end
end

# {
#     "Philadelphia" => 3,
#     "Fort Collins" => 1,
#     "Seattle" =>2,
#     "Denver" => 1,
#     "Santa Fe" => 1,
#     "Portland" => 1,
#     "Lansing" => 1,
#     "Columbus => 1,
#     "Austin" => 1
# }
