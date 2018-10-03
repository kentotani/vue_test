class CreateLanes < ActiveRecord::Migration[5.2]
  def change
    create_table :lanes do |t|
      t.string :title

      t.timestamps
    end
  end
end
