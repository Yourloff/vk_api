# frozen_string_literal: true

require_relative 'lib/connect'
require_relative 'lib/api/friends'

friends = Friends.new
response = friends.search(count: 10)
puts response
