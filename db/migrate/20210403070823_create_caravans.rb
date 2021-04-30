class CreateCaravans < ActiveRecord::Migration[5.2]
  def change
    create_table :caravans do |t|

      t.timestamps
    end
  end
end
