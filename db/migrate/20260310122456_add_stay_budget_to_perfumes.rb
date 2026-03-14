class AddStayBudgetToPerfumes < ActiveRecord::Migration[7.2]
  def change
    add_column :perfumes, :stay_budget, :integer
  end
end
