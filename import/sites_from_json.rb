require 'json'

Office.delete_all

content = File.read("#{Rails.root}/import/sites.json")
json = JSON.parse(content)

json['levels'][0]['locations'].each do |item|
  params = {
    title: item['title'],
    description: item['description'],
    url: item['link'],
    x: item['x'],
    y: item['y'],
    hq: (item['pin'] == 'circular-main')
  }

  Office.create params
end
