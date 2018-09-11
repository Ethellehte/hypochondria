class EntriesController < ApplicationController
  before_action :set_entry, only: [:show, :edit, :update, :destroy]

  def index
    @q = current_user.entries.ransack(params[:q])
    @user_entries = @q.result
  end

  def show
  end

  def new
    @entry = current_user.entries.build
    @measurment_categories = current_user.measurment_categories
  end

  def create
    @entry = current_user.entries.build(entries_params)
    @entry.measurement_ids = params[:measurement_ids]
    if @entry.save
      redirect_to @entry, notice: "Entry created"
    else
      render :new
    end
  end

  def edit
    @measurment_categories = current_user.measurment_categories
  end

  def update
    if @entry.update(entries_params)
      redirect_to @entry
    else
      render :edit
    end
  end

  def destroy
    @entry.destroy
    redirect_to entries_path
  end

    private

    def set_entry
      @entry = current_user.entries.find(params[:id])
    end

    def entries_params
      params.require(:entry).permit!
    end


end
