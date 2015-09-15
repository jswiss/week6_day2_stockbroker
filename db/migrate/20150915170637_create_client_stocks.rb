class CreateClientStocks < ActiveRecord::Migration
  def change
    create_table :client_stocks do |t|
      t.integer :client_id
      t.integer :stock_id
      t.decimal :stock_quantity

      t.timestamps null: false
    end
  end
end
