class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :location
      t.string :role
    end
  end
end
