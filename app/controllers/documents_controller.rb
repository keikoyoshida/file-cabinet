class DocumentsController < ApplicationController

  def new
    @document = Document.new
  end

  def create
  end

  private

    def document_params
    end

end
