puts 'Start inserting seed "users" ...'
500.times do
  user = User.create(
    email: Faker::Internet.unique.email,
    username: Gimei.kanji,
    password: 'password',
    password_confirmation: 'password'
  )
  puts "\"#{user.username}\" has created!"
end