class PagesController < ApplicationController

  skip_before_action :authenticate_user!

  def home
  end

  # @route GET /turbo_frame_form 
  def turbo_frame_form
  end

  # @route POST /turbo_frame_submit 
  def turbo_frame_submit
    extracted_anynumber = params[:any][:anynumber]
    render :turbo_frame_form, status: :ok, 
    locals: {anynumber: extracted_anynumber, comment: 'turbo_frame_submit ok' }
  end

  def post_something
    respond_to do |format|
    format.turbo_stream {  }
    end
  end


end
