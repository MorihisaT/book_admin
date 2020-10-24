class BooksController < ApplicationController
  def show
    @book = Book.find(pramas[:id])
    respond_to do |format|
      format.html
      format.json
    end
  end
end
