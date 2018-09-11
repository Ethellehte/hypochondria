class MeasurementsController < ApplicationController

  def create
    @measurement = Measurement.new(measurement_params)
    @measurement.user_id = current_user.id

    respond_to do |format|
      if @measurement.save
        format.js
      else
        format.js
      end
    end
  end



  def update
    @measurement = Measurement.find(params[:id])

    respond_to do |format|
      if @measurement.update(measurement_params)
        format.js
      else
        format.js
      end
    end
  end


  def destroy
    @measurement = Measurement.find(params[:id])
    @measurement.destroy
    respond_to do |format|
      format.js
    end
  end

    private

    def measurement_params
      params.require(:measurement).permit!
    end

end
