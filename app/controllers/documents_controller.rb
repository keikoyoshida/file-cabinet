class DocumentsController < ApplicationController

  before_action :set_document, only: [:show]

  def index
  end

  def new
    @document = Document.new
  end

  def create
    @document = Document.new(document_params)
    if @document.save
      redirect_to @document
    else
      render 'new'
    end
  end

  private

    def document_params
      params.require(:document).permit(:title, :content)
    end

    def set_document
      @document = Document.find(params[:id])
    end

end
