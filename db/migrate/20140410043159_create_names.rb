class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.string :db_entity
      t.string :type

      t.timestamps
    end
  end
end
