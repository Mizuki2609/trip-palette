class AddSpotBudgetToPerfumes < ActiveRecord::Migration[7.2]
  def change
    add_column :perfumes, :spot_budget, :integer
  end
end
