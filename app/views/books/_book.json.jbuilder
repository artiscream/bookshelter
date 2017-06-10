json.extract! book, :id, :title, :image, :author, :description, :year, :cost, :is_here, :created_at, :updated_at
json.url book_url(book, format: :json)
