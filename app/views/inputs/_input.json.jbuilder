json.extract! input, :id, :name, :directions, :created_at, :updated_at
json.url input_url(input, format: :json)