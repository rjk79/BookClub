class RemoveTextFromBooks < ActiveRecord::Migration[6.0]
  def change
    remove_column :books, :text, :string
  end
end
