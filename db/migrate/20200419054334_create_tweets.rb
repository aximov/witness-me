class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :url
      t.text :content
      t.boolean :is_ACNH
      t.boolean :contain_image

      t.timestamps
    end
  end
end
