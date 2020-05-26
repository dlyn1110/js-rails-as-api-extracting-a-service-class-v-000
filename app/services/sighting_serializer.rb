class SightingSerializer

  def initialiaze(sighting)
    @sighting = sighting
  end

  def to_serialized_json
    @sighting.to_json(:include => {
     :bird => {:only => [:name, :species]},
     :location => {:only => [:latitude, :longitude]}
   }, :except => [:updated_at])
  end
end
