class CreateIndents < ActiveRecord::Migration
  def change
    create_table :indents do |t|
      t.string :warehouse
      t.string :no
      t.string :grp
      t.string :item
      t.string :make
      t.string :uom
      t.string :qt_p
      t.string :dt
      t.string :rq
      t.string :cc
      t.string :remarks
      t.text :details
      t.string :pr_po
      t.string :by
      t.string :status
      t.string :date
      t.string :person

      t.timestamps null: false
    end
  end
end
