class AddingAssociations < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :number_of_employees, :integer, default: 0
    Company.reset_column_information
    Company.all.each do |c|
      Company.update_counters c.id, number_of_employees: c.employees.length
    end
  end
end

