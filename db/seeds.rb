20.times do |n|
	user = User.create(email: "user-numero#{n}@email.com", password: '123456')
	10.times do |nn|
		user.tweets.create(content: "Hello #{nn}")
	end
end