class CreateEarns < ActiveRecord::Migration[5.1]
  def change
    create_table :earns do |t|

      t.timestamps
    end
  end
end
