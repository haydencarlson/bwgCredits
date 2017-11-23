class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :title
      t.string :description
      t.string :text
      t.string :url
      t.timestamps
    end
  end
end
