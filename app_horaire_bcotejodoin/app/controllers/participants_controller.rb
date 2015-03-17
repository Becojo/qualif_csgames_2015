class ParticipantsController < ApplicationController
  before_action :set_participant, only: [:show, :edit, :update, :destroy]

  # GET /participants
  # GET /participants.json
  def index
    @participants = Participant.includes(:assignments).all
  end

  # GET /participants/1
  # GET /participants/1.json
  def show
    @assigned = Competition.where('id IN (?)', @participant.assignments.map { |p| p.competition_id })
    @prefered = Competition.where('id IN (?)', @participant.preferences.map { |p| p.competition_id })

    @horaire = {
      "Friday" => {"Morning" => [], "Afternoon" => [], "Evening" => []},
      "Saturday" => {"Morning" => [], "Afternoon" => [], "Evening" => []},
      "Sunday" => {"Morning" => [], "Afternoon" => [], "Evening" => []}
    }

    @participant.score = 0

    @prefered.each do |comp|
      val = false

      @assigned.each do |c|
        if c.id == comp.id
          val = true
          break
        end
      end

       comp.is_satisfied = val ? ':) Satisfait' : ''
    end

    @assigned.each do |comp|
      val = false

      @prefered.each do |c|
        if c.id == comp.id
          val = true
          break
        end
      end

      comp.is_satisfied = val ? ':)' : ':('

      @participant.score += val ? 2 : -1

      @horaire[comp.date][comp.time].push comp
    end

    @conflit = false
    @horaire.each do |day, slots|
      slots.each do |slot, comps|
        if comps.size > 1
          @conflit = true
          break
        end
      end

      break if @conflit
    end
  end

  # GET /participants/new
  def new
    @participant = Participant.new
  end

  # GET /participants/1/edit
  def edit
  end

  # POST /participants
  # POST /participants.json
  def create
    @participant = Participant.new(participant_params)

    respond_to do |format|
      if @participant.save
        format.html { redirect_to @participant, notice: 'Participant was successfully created.' }
        format.json { render :show, status: :created, location: @participant }
      else
        format.html { render :new }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /participants/1
  # PATCH/PUT /participants/1.json
  def update
    respond_to do |format|
      if @participant.update(participant_params)
        format.html { redirect_to @participant, notice: 'Participant was successfully updated.' }
        format.json { render :show, status: :ok, location: @participant }
      else
        format.html { render :edit }
        format.json { render json: @participant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /participants/1
  # DELETE /participants/1.json
  def destroy
    @participant.destroy
    respond_to do |format|
      format.html { redirect_to participants_url, notice: 'Participant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_participant
      @participant = Participant.includes(:preferences, :assignments).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def participant_params
      params.require(:participant).permit(:nom)
    end
end
