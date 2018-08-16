class AddNotesBlobToUsers < ActiveRecord::Migration
  def change
    add_column :users, :notes_blob, :text
  end
end
