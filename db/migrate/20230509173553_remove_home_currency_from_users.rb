class RemoveHomeCurrencyFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :home_currency
  end
end
