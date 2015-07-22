20.times do
  User.create(name: Faker::Internet.user_name, password: "password")
end

5.times do
  lead_id = User.pluck(:id).sample
  project = Project.create(name: Faker::Company.name, description: Faker::Lorem.paragraph, lead_id: lead_id)
  4.times do
    project.members << User.find(User.pluck(:id).sample)
  end
end
