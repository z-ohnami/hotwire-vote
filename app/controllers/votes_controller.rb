class VotesController < ApplicationController
  def create
    subject_choice = SubjectChoice.find(vote_params[:subject_choice_id])
    @vote = Vote.find_or_initialize_by(session_id: session[:session_id], subject_id: subject_choice.subject_id)
    @vote.subject_choice_id = subject_choice.id
    if @vote.save
      subject = Subject.find(subject_choice.subject_id)
      @vote.broadcast_replace_to subject, target: 'voting_result', partial: 'subjects/voting_result', locals: { subject: subject }
    end
  end

  private

  def vote_params
    params
      .require(:vote)
      .permit(:subject_choice_id)
  end
end
