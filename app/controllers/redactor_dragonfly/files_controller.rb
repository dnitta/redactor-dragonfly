module RedactorDragonfly
  class FilesController < ApplicationController

    def index
      render json: {}
    end

    def create
      @attach = RedactorDragonfly.attach_model.new
      @attach.file = params[:file]
      if @attach.save
        render text: { filelink: @attach.file.url, filename: @attach.file.name }.to_json
      else
        render nothing: true
      end
    end

  end
end
