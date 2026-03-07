class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :adress
      t.string :time
      t.integer :cost
      t.text :point
      t.string :image

      t.timestamps
    end
  end
end
