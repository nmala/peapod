# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
##

Genre.create([{name: "History", api_id: 125}, {name: "Music", api_id: 134}, {name: "Technology", api_id: 127}, {name: "Comedy", api_id: 133}, {name: "Philosophy", api_id: 126}])

# ############################
# # API functionality
API_KEY='xlqn4KLqmDmshLmLk6m8YC3xebgxp1oavkzjsn2HlTXS3R7HSk'

history = Genre.find_by(name: "History").api_id
history_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{history}", {'X-Mashape-Key': API_KEY, accept: :json})
history_json = JSON.parse(history_response)
history_podcasts_hash = history_json["channels"]

history_podcasts_hash.each do |p|
  Podcast.create(
    name: p["title"],
    api_id: p["id"],
    description: p["description"],
    genre_id: Genre.find_by(name: "History").id
  )
end


music = Genre.find_by(name: "Music").api_id
music_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{music}", {'X-Mashape-Key': API_KEY, accept: :json})
music_json = JSON.parse(music_response)
music_podcasts_hash = music_json["channels"]

music_podcasts_hash.each do |p|
  Podcast.create(
    name: p["title"],
    api_id: p["id"],
    description: p["description"],
    genre_id: Genre.find_by(name: "Music").id
  )
end

technology = Genre.find_by(name: "Technology").api_id
technology_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{technology}", {'X-Mashape-Key': API_KEY, accept: :json})
technology_json = JSON.parse(technology_response)
technology_podcasts_hash = technology_json["channels"]

technology_podcasts_hash.each do |p|
  Podcast.create(
    name: p["title"],
    api_id: p["id"],
    description: p["description"],
    genre_id: Genre.find_by(name: "Technology").id
  )
end

comedy = Genre.find_by(name: "Comedy").api_id
comedy_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{comedy}", {'X-Mashape-Key': API_KEY, accept: :json})
comedy_json = JSON.parse(comedy_response)
comedy_podcasts_hash = comedy_json["channels"]

comedy_podcasts_hash.each do |p|
  Podcast.create(
    name: p["title"],
    api_id: p["id"],
    description: p["description"],
    genre_id: Genre.find_by(name: "Comedy").id
  )
end

philosophy = Genre.find_by(name: "Philosophy").api_id
philosophy_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{philosophy}", {'X-Mashape-Key': API_KEY, accept: :json})
philosophy_json = JSON.parse(philosophy_response)
philosophy_podcasts_hash = philosophy_json["channels"]

philosophy_podcasts_hash.each do |p|
  Podcast.create(
    name: p["title"],
    api_id: p["id"],
    description: p["description"],
    genre_id: Genre.find_by(name: "Philosophy").id
  )
end

#### getting episodes ######
def get_episodes(p)
  response = RestClient.get("api.listennotes.com/api/v1/search?ocid=#{p.api_id}&q=#{p.name}&type=episode", {'X-Mashape-Key': API_KEY, accept: :json})

  response_hash = JSON.parse(response)
  response_hash["results"] # episodes for given podcast
end

def all_episodes
  Podcast.all.each do |p|
    get_episodes(p).each do |e|
      Episode.create(
        name: e["title_original"],
        description: e["description_original"],
        publisher: e["publisher_original"],
        image: e["image"],
        audio: e["listennotes_url"].split('/e/').join('/embedded/e/'),
        podcast_id: Podcast.find_by(name: e["podcast_title_original"]).id
      )
    end
  end
end

all_episodes
