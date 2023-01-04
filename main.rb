require_relative 'lib/connect'
require_relative 'lib/api/friends'

friends = Friends.new
response = friends.search
puts response
