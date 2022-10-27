class AddDateToAppoi < ActiveRecord::Migration[5.2]
  def change
    add_reference :appointments, :date, datetime
  end
end
