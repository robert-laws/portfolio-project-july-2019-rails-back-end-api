class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :publication_year
end
