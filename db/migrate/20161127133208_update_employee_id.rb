class UpdateEmployeeId < ActiveRecord::Migration[5.0]
  def up
    say_with_time "Updating employee_id..." do
      Invoice.where(employee_id: nil).each do |p|
        p.update_attribute :employee_id, 1
      end
    end
  end
end
