require '../rosette_api'
require '../document_parameters'

api_key, url = ARGV

if !url
  rosette_api = RosetteAPI.new(api_key)
else
  rosette_api = RosetteAPI.new(api_key, url)
end

params = DocumentParameters.new
params.content = "The fact is that the geese just went back to get a rest and I'm not banking on their return soon"
response = rosette_api.get_parts_of_speech(params)
puts JSON.pretty_generate(response)