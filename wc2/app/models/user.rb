class User < ActiveRecord::Base
	def self.sign_in_from_omniauth(auth)
		find_by(provider: auth['provider'], uid: auth['uid']) || create_new_user(auth)
	end
	def self.create_new_user(auth)
		create(
			provider: auth['provider'], 
			uid: auth['uid'], 
			name: auth['info']['name'],
		)
	end
end
