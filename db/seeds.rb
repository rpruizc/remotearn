10.times do |n|
  Post.create!(title: "Post title - ##{n}", content: "This is the content for the #{n.ordinalize} post", url:"https://www.#{n.ordinalize}.com")
end