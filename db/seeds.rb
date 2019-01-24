# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
##

# Podcast.delete_all
# Genre.delete_all
# Episode.delete_all

Genre.create([{name: "History", api_id: 125}, {name: "Music", api_id: 134}, {name: "Technology", api_id: 127}, {name: "Comedy", api_id: 133}, {name: "Philosophy", api_id: 126}])

# Genre.create(name: "History", api_id: 1)
#
# p1 = Podcast.create(
#   name: "Waking Up with Sam Harris",
#   genre_id: Genre.first.id
# )
# p2 = Podcast.create(
#   name: "Hardcore History",
#   genre_id: Genre.first.id
# )
# p2 = Podcast.create(
#   name: "The Joe Rogan Podcast",
#   genre_id: Genre.first.id
# )
#
# # <iframe src="https://www.listennotes.com/embedded/e/d610667d1bf14541aeb83a706bda6bff" height="170px" width="100%" style="width: 1px; min-width: 100%;" frameborder="0" scrolling="no"></iframe>
#
# Episode.create(
#   name: "#146 — Digital Capitalism" ,
#   description: "In this episode of the podcast, Sam Harris speaks with Douglas Rushkoff about the state of the digital economy.
#
# You can support the Waking Up Podcast and receive subscriber-only content at SamHarris.org/subscribe." ,
#   publisher: "Sam Harris" ,
#   image: "https://d3sv2eduhewoas.cloudfront.net/channel/image/699bfb9dcb0f45c4bd7fa7410c4c8f7d.jpg" ,
#   audio: "https://www.listennotes.com/embedded/e/d610667d1bf14541aeb83a706bda6bff" ,
#   podcast_id: p1.id
# )
#
# Episode.create(
#   name: "#145 — The Information War",
#   description:"In this episode of the podcast, Sam Harris speaks with Renee Diresta about Russia's 'Internet Research Agency' and its efforts to amplify conspiracy thinking and partisan conflict in the United States.
#
# You can support the Waking Up Podcast and receive subscriber-only content at SamHarris.org/subscribe." ,
#   publisher: "Sam Harris" ,
#   image:"https://d3sv2eduhewoas.cloudfront.net/channel/image/699bfb9dcb0f45c4bd7fa7410c4c8f7d.jpg" ,
#   audio:"https://www.listennotes.com/embedded/e/75218cc14b6649049068cc391f673e16" ,
#   podcast_id: p1.id
# )
#
# Episode.create(
#   name:"The Drive Interview with Peter Attia" ,
#   description:"In this episode of the podcast, Sam Harris speaks with Peter Attia about meditation and the nature of mind. They discuss types of meditation, the difference between pain and suffering, the difference between joy and wellbeing, the half-life of negative emotions, thinking and dreaming, the power of culture, the power of language, letting go of anger, MDMA, loving one's enemies, moral luck, the ethics of lying, and other topics.
#
# You can support the Waking Up Podcast and receive subscriber-only content at SamHarris.org/subscribe." ,
#   publisher:"Sam Harris" ,
#   image:"https://d3sv2eduhewoas.cloudfront.net/channel/image/699bfb9dcb0f45c4bd7fa7410c4c8f7d.jpg" ,
#   audio:"https://www.listennotes.com/embedded/e/0667279c08df4d97b8663db59cd37b37",
#   podcast_id: p1.id
# )
#
# Episode.create(
#   name:"Show 63 - Supernova in the East II",
#   description:"Deep themes run through this show, with allegations of Japanese war crimes and atrocities in China at the start leading to eerily familiar, almost modern questions over how the world should respond. And then Dec 7, 1941 arrives...",
#   publisher:"Dan Carlin" ,
#   image:"https://www.listennotes.com/podcasts/dan-carlins-hardcore-history-dan-carlin-THDlEiZ9tbB/#images" ,
#   audio:"https://www.listennotes.com/embedded/e/db28faa02935492198aae06cf2da0e48",
#   podcast_id: p2.id
# )

############################
# API functionality
API_KEY='xlqn4KLqmDmshLmLk6m8YC3xebgxp1oavkzjsn2HlTXS3R7HSk'

# POC Below
# @response = RestClient.get('api.listennotes.com/api/v1/just_listen', {'X-Mashape-Key': API_KEY, accept: :json})
# @genres_response = RestClient.get('api.listennotes.com/api/v1/genres', {'X-Mashape-Key': API_KEY, accept: :json})
# @genres = JSON.parse(@genres_response)
# @json = JSON.parse(@response)
# pod = Podcast.create(name: @json["podcast_title"], genre_id: Genre.first.id)
# Episode.create(name: @json["title"], description: @json["description"], podcast_id: pod.id)

############

# history = Genre.find_by(name: "History").api_id
# history_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{history}", {'X-Mashape-Key': API_KEY, accept: :json})
# history_json = JSON.parse(history_response)
# history_podcasts_hash = history_json["channels"]
#
# history_podcasts_hash.each do |p|
#   Podcast.create(
#     name: p["title"],
#     genre_id: Genre.find_by(name: "History").id
#   )
# end


music = Genre.find_by(name: "Music").api_id
music_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{music}", {'X-Mashape-Key': API_KEY, accept: :json})
music_json = JSON.parse(music_response)
music_podcasts_hash = music_json["channels"]

music_podcasts_hash.each do |p|
  Podcast.create(
    name: p["title"],
    genre_id: Genre.find_by(name: "Music").id
  )
end

# technology = Genre.find_by(name: "Technology").api_id
# technology_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{technology}", {'X-Mashape-Key': API_KEY, accept: :json})
# technology_json = JSON.parse(technology_response)
# technology_podcasts_hash = technology_json["channels"]
#
# comedy = Genre.find_by(name: "Comedy").api_id
# comedy_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{comedy}", {'X-Mashape-Key': API_KEY, accept: :json})
# comedy_json = JSON.parse(comedy_response)
# comedy_podcasts_hash = comedy_json["channels"]
#
# philosophy = Genre.find_by(name: "Philosophy").api_id
# philosophy_response = RestClient.get("api.listennotes.com/api/v1/best_podcasts?genre_id=#{philosophy}", {'X-Mashape-Key': API_KEY, accept: :json})
# philosophy_json = JSON.parse(philosophy_response)
# philosophy_podcasts_hash = philosophy_json["channels"]
