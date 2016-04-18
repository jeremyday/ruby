require '../rosette_api'
require '../document_parameters'

api_key, url = ARGV

if !url
  rosette_api = RosetteAPI.new(api_key)
else
  rosette_api = RosetteAPI.new(api_key, url)
end

params = DocumentParameters.new
params.content = 'Rechtsschutzversicherungsgesellschaften'
response = rosette_api.get_compound_components(params)
puts JSON.pretty_generate(response)