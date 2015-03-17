class AssignmentsController < ApplicationController
  def create
    competition = Competition.find(params[:competition_id])
    participant = Participant.includes(:preferences).find(params[:participant_id])
    ids = participant.preferences.map do |pref|
      pref.competition_id
    end

    unless ids.include? competition.id
      flash[:warning] = "Le participant ne désire pas participer à cette compétition."
    end

    Assignment.create(participant_id: participant.id, competition_id: competition.id)

    redirect_to participant
  end

  def delete

  end
end
