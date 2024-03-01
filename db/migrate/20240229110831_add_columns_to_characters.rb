class AddColumnsToCharacters < ActiveRecord::Migration[7.1]
  def change
    add_column :characters, :note, :string
    add_column :characters, :competence, :string
  end
end
