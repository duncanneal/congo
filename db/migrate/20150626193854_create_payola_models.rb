class CreatePayolaModels < ActiveRecord::Migration
  def change
    create_table :payola_models do |t|
      t.integer  :price
      t.string   :name
      t.string   :permalink

      t.timestamps null: false
    end
  end
end
