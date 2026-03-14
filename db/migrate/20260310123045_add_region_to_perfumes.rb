class AddRegionToPerfumes < ActiveRecord::Migration[7.2]
  def change
    add_column :perfumes, :region, :integer
  end
end
