class AddDetailsToBook < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :author, :string
    add_column :books, :description, :string
    add_column :books, :total_pages, :integer
    add_column :books, :rating, :integer
  end
end
