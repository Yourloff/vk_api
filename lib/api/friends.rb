# frozen_string_literal: true

class Friends
  include Connect

  def search(params = {})
    JSON.parse(plug.get('friends.search', params).body)['response']
  end
end
