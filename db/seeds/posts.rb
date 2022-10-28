puts 'Start inserting seed "posts" ...'
User.limit(500).each do |user|
  2.times do |n|
    post = user.posts.build(body: Faker::Hacker.say_something_smart)
    post.images.attach(io: File.open('db/fixtures/dummy_1.jpg'), filename: 'dummy')
    post.images.attach(io: File.open('db/fixtures/dummy_2.jpg'), filename: 'dummy')
    post.images.attach(io: File.open('db/fixtures/dummy_3.jpg'), filename: 'dummy')
    post.save
    puts "post#{post.id} has created!"
  end
end

