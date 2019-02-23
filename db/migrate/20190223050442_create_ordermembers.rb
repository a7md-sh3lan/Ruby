class CreateOrdermembers < ActiveRecord::Migration[5.2]
  def change
    create_table :ordermembers do |t|

      t.timestamps
    end
  end
end
