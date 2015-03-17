class ImporterController < ApplicationController
  def index

  end

  def create
    begin
      data = JSON.parse(params[:upload].tempfile.read)

      competitions = Competition.create(data['competitions'])

      data['participants'].each do |participant|
        p = Participant.create(name: participant['name'])

        participant['preferences'].each_with_index do |pref, i|
          Preference.create({participant_id: p.id, competition_id: competitions[pref].id, index: i})
        end
      end

      redirect_to :back, :flash => { :notice => "Import effectué avec succès" }

    rescue Exception => e
      logger.error e.message
      logger.error e.backtrace.join("\n")
      redirect_to :back, :flash => { :error => "Erreur lors de l'upload" }
    end
  end
end
