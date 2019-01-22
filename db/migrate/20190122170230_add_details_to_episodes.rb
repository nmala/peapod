


class AddDetailsToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :episode_id, :string
    add_column :episodes, :transcripts_highlighted, :string
    add_column :episodes, :podcast_title_highlighted, :string
    add_column :episodes, :publisher_original, :string
    add_column :episodes, :pub_date_ms, :string
    add_column :episodes, :explicit_content, :string
    add_column :episodes, :title_highlighted, :string
    add_column :episodes, :description_highlighted, :string
    add_column :episodes, :podcast_listennotes_url, :string
    add_column :episodes, :image, :string
    add_column :episodes, :rss, :string
    add_column :episodes, :podcast_id, :string
  end
end
