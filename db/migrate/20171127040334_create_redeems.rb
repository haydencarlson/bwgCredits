class CreateRedeems < ActiveRecord::Migration[5.1]
  def change
    create_table :redeems do |t|
      t.string :title
      t.integer :cost
      t.timestamps
    end
  end
end
