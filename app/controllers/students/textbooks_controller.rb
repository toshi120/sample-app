class Students::TextbooksController < Students::ApplicationController
  before_action :set_students_textbook, only: [:show]

  def index
    @students_textbooks = Textbook.all
  end

  def show
  end


  private

    def set_students_textbook
      @students_textbook = Textbook.find(params[:id])
    end
end
