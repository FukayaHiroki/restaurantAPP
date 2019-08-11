json.array! @restaurants do |restaurant|
  json.id       restaurant.id
  json.name     restaurant.name
  json.content  restaurant.content
end