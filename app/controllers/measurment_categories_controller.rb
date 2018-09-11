class MeasurmentCategoriesController < ApplicationController

    before_action :measurment_categories, only: [:show, :edit, :update, :destroy]

    def index
      @measurment_categories = MeasurmentCategory.all
    end

    def show
    end

    def new
      @measurment_category = current_user.measurment_categories.build
    end

    def create
      @measurment_category = current_user.measurment_categories.build(measurment_categories_params)

      if @measurment_category.save
        redirect_to @measurment_category, notice: "Entry created"
      else
        render :new
      end
    end

    def edit
    end

    def update
      if @measurment_category.update(measurment_categories_params)
        redirect_to @measurment_category
      else
        render :edit
      end
    end

    def destroy
      @measurment_categories.destroy
      redirect_to root_path
    end

      private

      def measurment_categories
        @measurment_category = current_user.measurment_categories.find(params[:id])
      end

      def measurment_categories_params
        params.require(:measurment_category).permit(:title, :measurment_type)
      end

end
