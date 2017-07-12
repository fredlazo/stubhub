class RenameVistorinEventstoVisitor < ActiveRecord::Migration
  def change
    rename_column :events, :vistor, :visitor
  end
end
