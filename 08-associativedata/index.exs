users = [{:name, "VJ"},{:age, 25}]
IO.puts( is_list(users))

users = [{:name, "VJ"},{:age, 25}, {:name, "JPQ"}]
IO.puts( is_list(users))

# keyword list
users = [ name: "VJ", age: 25]
IO.puts( is_list(users))

# map
user = %{"name"=>"VJ","age"=>25}
IO.puts( user["name"] )

user = %{:name=>"VJ","age"=>25}
IO.puts( user[:name] )

user = %{:name=>"VJ",25=>"Age","hobby"=>"programming"}
IO.puts( user[:name] )
IO.puts( user[25] )
IO.puts( user["hobby"] )

users = [first: %{:name=>"VJ"}, second: %{:name=>"JPQ"}]
IO.puts( length(users))
IO.puts( users[:first][:name])
