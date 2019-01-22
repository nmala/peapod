class AddDetailsToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :podcast_title_original, :string
    add_column :podcasts, :genre_id, :string

  end
end
