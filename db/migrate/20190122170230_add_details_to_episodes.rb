


class AddDetailsToEpisodes < ActiveRecord::Migration[5.2]
  def change
<<<<<<< HEAD
    add_column :episodes, :episode_id, :string
    add_column :episodes, :transcripts_highlighted, :string
    add_column :episodes, :podcast_title_highlighted, :string
    add_column :episodes, :publisher_original, :string
=======
>>>>>>> create_seed_data
    add_column :episodes, :name, :string
    add_column :episodes, :description, :string
    add_column :episodes, :publisher, :string
    add_column :episodes, :pub_date_ms, :string
    add_column :episodes, :image, :string
<<<<<<< HEAD
    add_column :episodes, :rss, :string
    add_column :episodes, :podcast_id, :string
=======
>>>>>>> create_seed_data
    add_column :episodes, :audio, :string
    add_column :episodes, :podcast_id, :integer
  end
end
