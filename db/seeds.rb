require 'faker'

@en = Language.create(id: 1, name: 'English', country_code: 'gb')
@it = Language.create(id: 2, name: 'Italian', country_code: 'it')
@es = Language.create(id: 3, name: 'Spanish', country_code: 'es')


@it_site = Site.create name: 'Vox Italy', slug: 'it'
@es_site = Site.create name: 'Vox Spain', slug: 'es'


# Main Site Data

User.create!(
  email: "admin@example.com",
  password: "secret",
  admin: true,
  site: @it_site
)

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
                hq: hq)
end

4.times do |i|
  NewsItem.create title: "News #{i}", body: "<p>Example news body #{i}</p>"
end


# Local Sites

def insert_translation(site, language)

  translation = Translation.find_or_create_by({
    site_id: site.id,
    language_id: language.id
  })

  translation.update!(
    intro: "#{site.name} - #{language.name} - intro",
    services: "#{site.name} - #{language.name} - services",
    products: "#{site.name} - #{language.name} - products",
    find_us: "#{site.name} - #{language.name} - find_us",
    lets_talk: "#{site.name} - #{language.name} - lets_talk",
    support: "#{site.name} - #{language.name} - support",
    intro_label: "#{site.name} intro",
    services_label: "#{language.country_code} services",
    products_label: "#{language.country_code} products",
    news_label: "#{language.country_code} news",
    find_us_label: "#{language.country_code} find_us",
    lets_talk_label: "#{language.country_code} lets_talk",
    support_label: "#{language.country_code} support",
    contacts_label: "#{language.country_code} contacts",
    products_link_label: "#{language.country_code} products_link",
    services_link_label: "#{language.country_code} services_link",
    read_more: "#{language.country_code} read_more"
  )
end


insert_translation(@it_site, @en)
insert_translation(@it_site, @it)
insert_translation(@es_site, @en)
insert_translation(@es_site, @es)



