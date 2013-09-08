module RedactorDragonfly
  class ImagesController < ApplicationController

    def index
      render json: {}
    end

    def create
      @attach = RedactorDragonfly.attach_model.new
      @attach.file =
        if params[:contentType] == "image/png"
          Base64.decode64(params[:data])
        else
          params[:file]
        end
      if @attach.save
        render text: { filelink: @attach.file.url }.to_json
      else
        render nothing: true
      end
    end

  end
end
