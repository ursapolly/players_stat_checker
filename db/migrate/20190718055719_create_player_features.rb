class CreatePlayerFeatures < ActiveRecord::Migration[5.2]
  def change
    create_table :player_features do |t|
      t.string :title

      t.timestamps
    end
  end
end
