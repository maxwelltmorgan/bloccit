require 'random_data'

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body: RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Post.find_or_create_by(title: "Unique Title", body: "A unique body.")

Comment.find_or_create_by(post: posts.first, body: 'A unique comment.')

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
