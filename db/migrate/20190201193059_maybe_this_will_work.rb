class MaybeThisWillWork < ActiveRecord::Migration[5.2]
  def change
    remove_column :companies, :number_of_employees
    add_column :companies, :employees_count, :integer, default: 0
  end
end
