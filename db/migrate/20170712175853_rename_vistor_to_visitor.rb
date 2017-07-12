class RenameVistorToVisitor < ActiveRecord::Migration
  def up
    rename_column :events, :vistor, :visitor
  end

  def down
    rename_column :events, :visitor, :vistor
  end
end
