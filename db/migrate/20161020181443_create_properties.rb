class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.text :json_data
      t.timestamps null: false
    end
  end
end
