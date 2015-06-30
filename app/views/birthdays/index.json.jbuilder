json.array!(@birthdays) do |birthday|
  json.extract! birthday, :id, :namae, :hidzuke
  json.url birthday_url(birthday, format: :json)
end
