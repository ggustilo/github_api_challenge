require 'httparty'

class GitHubAPI

	attr_reader :base_uri

	def initialize
		@base_uri = "https://api.github.com"
	end

	def make_api_call(params)
		response = HTTParty.get(base_uri + params)
	end

	def get_args
		ARGV[0].to_s
	end

end

test = GitHubAPI.new

path = test.get_args

json = test.make_api_call(path)

puts JSON.pretty_generate json