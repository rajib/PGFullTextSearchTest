class AddExtentionToPgFuzzystrmatch < ActiveRecord::Migration
  def change
    execute "create extension fuzzystrmatch;"
  end
end
