class AddColumnsInEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :event_type, :string
    add_column :events, :user_id, :integer
  end
end
