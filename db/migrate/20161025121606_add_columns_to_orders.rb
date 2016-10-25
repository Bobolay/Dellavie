class AddColumnsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :referrer, :string
    add_column :orders, :locale, :string
    add_column :orders, :session_id, :string
  end
end
