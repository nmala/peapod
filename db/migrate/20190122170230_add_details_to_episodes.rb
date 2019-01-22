class AddDetailsToEpisodes < ActiveRecord::Migration[5.2]
  def change
    add_column :episodes, :name, :string
    add_column :episodes, :description, :string
    add_column :episodes, :publisher, :string
    add_column :episodes, :image, :string
    add_column :episodes, :audio, :string
    add_column :episodes, :podcast_id, :integer
  end
end
