class AddToOffers < ActiveRecord::Migration[5.1]
  def change
    add_column :offers, :image_url, :string
    add_column :offers, :reward_amount, :integer
  end
end
