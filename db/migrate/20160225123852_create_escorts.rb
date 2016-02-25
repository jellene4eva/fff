class CreateEscorts < ActiveRecord::Migration
  def change
    create_table :escorts do |t|
      t.string :name
      t.integer :age
      t.text :description
      t.integer :rate_per_hour_in_cents

      t.timestamps null: false
    end
  end
end
