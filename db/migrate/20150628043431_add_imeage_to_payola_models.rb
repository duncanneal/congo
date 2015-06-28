class AddImeageToPayolaModels < ActiveRecord::Migration
  def change
    add_column :payola_models, :image, :string
  end
end
