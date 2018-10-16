class AddLaneRefToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :lane, foreign_key: true
  end
end
