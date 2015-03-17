class HoraireController < ApplicationController
  def index
  	@horaire = {
      "Friday" => {"Morning" => [], "Afternoon" => [], "Evening" => []},
      "Saturday" => {"Morning" => [], "Afternoon" => [], "Evening" => []},
      "Sunday" => {"Morning" => [], "Afternoon" => [], "Evening" => []}
    }

    comps = Competition.includes(:assignments).all

    comps.each do |comp|
    	@horaire[comp.date][comp.time] << comp
    end
  end
end
