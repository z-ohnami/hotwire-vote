class SubjectsController < ApplicationController
  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
    @vote = Vote.find_or_initialize_by(session_id: session[:session_id], subject_id: params[:id])
  end
end
