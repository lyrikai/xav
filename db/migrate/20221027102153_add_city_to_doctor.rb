class AddCityToDoctor < ActiveRecord::Migration[5.2]
  def change
    add_reference :doctors, :citie, index: true
  end
end
