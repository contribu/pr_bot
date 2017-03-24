require 'octokit'

access_token = ENV['ACCESS_TOKEN']

stack = Faraday::RackBuilder.new do |builder|
  builder.response :logger
  builder.use Octokit::Response::RaiseError
  builder.adapter Faraday.default_adapter
end
Octokit.middleware = stack

client = Octokit::Client.new(:access_token => access_token)
puts user = client.user
puts user.login

puts client.issue('')

