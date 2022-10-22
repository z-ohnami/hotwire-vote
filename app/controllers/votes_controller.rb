class VotesController < ApplicationController
  def create
    subject_choice = SubjectChoice.find(vote_params[:subject_choice_id])
    @vote = Vote.find_or_initialize_by(session_id: session[:session_id], subject_id: subject_choice.subject_id)
    @vote.subject_choice_id = subject_choice.id
    @vote.save

    redirect_to subject_url(subject_choice.subject_id)
  end

  private

  def vote_params
    params
      .require(:vote)
      .permit(:subject_choice_id)
  end
end
