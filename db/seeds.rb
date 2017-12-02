5.times do
  Article.create({
      title: Faker::Book.title,
      body: Faker::Hipster.sentence
    })
end
