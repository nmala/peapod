class AddApiIdToGenre < ActiveRecord::Migration[5.2]
  def change
    add_column :genres, :api_id, :integer
  end
end
