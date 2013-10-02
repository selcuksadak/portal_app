# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
	token_file = Rails.root.join('.secret')
	if File.exist?(token_file)
		File.read(token_file).chomp
	else
		token = SecureRandom.hex(64)
		File.write(token_file, token)
		token
	end
end

Portal::Application.config.secret_key_base = secure_token
#Portal::Application.config.secret_key_base = 'fed2e81989a6803bf31142d3136f06d5f937cabb5e2fb9f1df9ce5b539fa158c3cc5ea815d1b57646f5c10619a9dd7fecb0e6eb54cdfdf7bf96b94184e3a3769'