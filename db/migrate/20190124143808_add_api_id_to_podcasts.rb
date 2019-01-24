class AddApiIdToPodcasts < ActiveRecord::Migration[5.2]
  def change
    add_column :podcasts, :api_id, :string
  end
end
