class CreateExchanges < ActiveRecord::Migration
  def self.up
    create_table :exchanges do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :exchanges
  end
end
