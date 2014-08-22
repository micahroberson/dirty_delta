class CreateTimecards < ActiveRecord::Migration
  def change
    create_table :timecards do |t|
      t.integer :minutes
      t.float :hours

      t.timestamps
    end
  end
end
