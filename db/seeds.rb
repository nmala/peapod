# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Podcast.create(
  name: "Waking Up with Sam Harris",
  genre_id: 1
)
Podcast.create(
  name: "Hardcore History",
  genre_id: 1
)
Podcast.create(
  name: "The Joe Rogan Podcast",
  genre_id: 1
)

# <iframe src="https://www.listennotes.com/embedded/e/d610667d1bf14541aeb83a706bda6bff" height="170px" width="100%" style="width: 1px; min-width: 100%;" frameborder="0" scrolling="no"></iframe>

Episode.create(
  name: "#146 — Digital Capitalism" ,
  description: "In this episode of the podcast, Sam Harris speaks with Douglas Rushkoff about the state of the digital economy.

You can support the Waking Up Podcast and receive subscriber-only content at SamHarris.org/subscribe." ,
  publisher: "Sam Harris" ,
  image: "https://d3sv2eduhewoas.cloudfront.net/channel/image/699bfb9dcb0f45c4bd7fa7410c4c8f7d.jpg" ,
  audio: "https://www.listennotes.com/embedded/e/d610667d1bf14541aeb83a706bda6bff" ,
  podcast_id: 1
)

Episode.create(
  name: "#145 — The Information War",
  description:"In this episode of the podcast, Sam Harris speaks with Renee Diresta about Russia's 'Internet Research Agency' and its efforts to amplify conspiracy thinking and partisan conflict in the United States.

You can support the Waking Up Podcast and receive subscriber-only content at SamHarris.org/subscribe." ,
  publisher: "Sam Harris" ,
  image:"https://d3sv2eduhewoas.cloudfront.net/channel/image/699bfb9dcb0f45c4bd7fa7410c4c8f7d.jpg" ,
  audio:"https://www.listennotes.com/embedded/e/75218cc14b6649049068cc391f673e16" ,
  podcast_id: 1
)

Episode.create(
  name:"The Drive Interview with Peter Attia" ,
  description:"In this episode of the podcast, Sam Harris speaks with Peter Attia about meditation and the nature of mind. They discuss types of meditation, the difference between pain and suffering, the difference between joy and wellbeing, the half-life of negative emotions, thinking and dreaming, the power of culture, the power of language, letting go of anger, MDMA, loving one's enemies, moral luck, the ethics of lying, and other topics.

You can support the Waking Up Podcast and receive subscriber-only content at SamHarris.org/subscribe." ,
  publisher:"Sam Harris" ,
  image:"https://d3sv2eduhewoas.cloudfront.net/channel/image/699bfb9dcb0f45c4bd7fa7410c4c8f7d.jpg" ,
  audio:"https://www.listennotes.com/embedded/e/0667279c08df4d97b8663db59cd37b37",
  podcast_id: 1
)


Episode.create(
  name:"Show 63 - Supernova in the East II",
  description:"Deep themes run through this show, with allegations of Japanese war crimes and atrocities in China at the start leading to eerily familiar, almost modern questions over how the world should respond. And then Dec 7, 1941 arrives...",
  publisher:"Dan Carlin" ,
  image:"https://www.listennotes.com/podcasts/dan-carlins-hardcore-history-dan-carlin-THDlEiZ9tbB/#images" ,
  audio:"https://www.listennotes.com/embedded/e/db28faa02935492198aae06cf2da0e48",
  podcast_id: 1
)
