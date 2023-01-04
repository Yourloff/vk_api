# frozen_string_literal: true

require 'dotenv'
require 'faraday'
require 'json'

Dotenv.load

module Connect
  URL = "https://api.vk.com/method/"
  VERSION = ENV['VERSION']
  TOKEN = ENV['TOKEN']
  USER_AGENT = ENV['USER_AGENT']

  def plug
    Faraday.new(
      url: URL,
      headers: { 'Content-Type' => 'application/json', 'User-Agent' => USER_AGENT },
      params: { v: VERSION,
                access_token: TOKEN
      }
    )
  end
end
