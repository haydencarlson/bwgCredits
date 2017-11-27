class CreateRedeems < ActiveRecord::Migration[5.1]
  def change
    create_table :redeems do |t|

      t.timestamps
    end
  end
end
