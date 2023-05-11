class CreateCurrencies < ActiveRecord::Migration[7.0]
  def change
    create_table :currencies do |t|
      t.string :entity
      t.string :currency
      t.string :alphabetic_code

      t.timestamps
    end
  end
end
