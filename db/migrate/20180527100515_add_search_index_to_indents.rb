class AddSearchIndexToIndents < ActiveRecord::Migration
  def change
    add_index :indents, :warehouse 
    add_index :indents, :remarks 
    add_index :indents, :details 
    add_index :indents, :person 
    add_index :indents, :make 
    add_index :indents, :item 
    add_index :indents, :no
    add_index :indents, :pr_po
    add_index :indents, :by
  end
end
