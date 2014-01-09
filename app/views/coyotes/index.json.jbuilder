json.array!(@coyotes) do |coyote|
  json.extract! coyote, :id
  json.url coyote_url(coyote, format: :json)
end
