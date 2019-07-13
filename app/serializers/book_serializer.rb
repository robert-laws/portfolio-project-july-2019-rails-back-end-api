class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :publication_year, :author, :description, :total_pages, :rating
end
