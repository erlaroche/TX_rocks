class CreateCoyotes < ActiveRecord::Migration
  def change
    create_table :coyotes do |t|

      t.timestamps
    end
  end
end
