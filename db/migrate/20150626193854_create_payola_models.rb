class CreatePayolaModels < ActiveRecord::Migration
  def change
    create_table :payola_models do |t|

      t.timestamps null: false
    end
  end
end
