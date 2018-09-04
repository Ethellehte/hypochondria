class MeasurmentsCategoriesController < ApplicationController

  def new
    @measurment_category = current_user.measurment_categories.build
  end

  def create
    @measurment_category = current_user.measurment_categories.build(measurment_categories_params)

    
  end

  private

    def measurment_categories_params
      params.require(:measurment_category).permit(:input_type)
    end

end
