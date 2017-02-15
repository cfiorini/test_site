require 'faker'

def rand_time(from, to=Time.now)
  Time.at(rand_in_range(from.to_f, to.to_f))
end

def rand_in_range(from, to)
  rand * (to - from) + from
end


@coordinates = [
  {x: 0.1734 , y: 0.4637},
  {x: 0.4784 , y: 0.4987},
  {x: 0.5527 , y: 0.4714},
  {x: 0.5823 , y: 0.5649},
  {x: 0.7999 , y: 0.6003},
]

5.times do |i|
  title = (i == 0) ? 'COMPANY HEADQUARTERS' :  Faker::Address.city
  hq = (i == 0)
  Office.create(title: title,
                description: Faker::Company.bs,
                x: @coordinates[i][:x],
                y: @coordinates[i][:y],
                created_at: rand_time(30.days.ago),
                updated_at: rand_time(30.days.ago),
                hq: hq)
end
Language.find_or_create_by(id: 1).update(name: 'English', country_code: 'uk')

Site.create name: 'Test Site'

User.create!(
  email: "admin@example.com",
  password: "secret",
  admin: true,
  site: Site.first
)



4.times do |i|
  NewsItem.create title: "News #{i}", body: "<p>Example news body #{i}</p>"
end
