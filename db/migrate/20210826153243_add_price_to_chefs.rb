class AddPriceToChefs < ActiveRecord::Migration[6.0]
  def change
    add_column :chefs, :price, :float
  end
end
