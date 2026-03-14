class AddFoodBudgetToPerfumes < ActiveRecord::Migration[7.2]
  def change
    add_column :perfumes, :food_budget, :integer
  end
end
