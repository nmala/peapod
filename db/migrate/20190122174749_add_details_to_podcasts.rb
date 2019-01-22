class AddDetailsToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :name, :string
    add_column :podcasts, :genre_id, :integer
  end
end
