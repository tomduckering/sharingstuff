class CreateLendables < ActiveRecord::Migration
  def self.up
    create_table :lendables do |t|
      t.string :name
      t.string :description
      t.string :owner

      t.timestamps
    end
  end

  def self.down
    drop_table :lendables
  end
end
