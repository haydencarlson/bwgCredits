class CreateCredits < ActiveRecord::Migration[5.1]
  def change
    create_table :credits do |t|
      t.references :user
      t.integer :amount
      t.references :offer
      t.timestamps
    end
  end
end
