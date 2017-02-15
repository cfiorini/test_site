class Admin::OfficesController < Admin::ApplicationController

  before_action :set_office, only: [:show, :edit, :update, :destroy]

  def index
    @offices = Office.all
  end

  def new
    @office = Office.new
  end

  def edit
  end

  def create
    @office = Office.new(office_params)
    if @office.save
      redirect_to action: :index, notice: 'office was successfully created.'
    else
      render :new
    end
  end

  def update
    if @office.update(office_params)
      redirect_to action: :index, notice: 'office was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @office.destroy
    redirect_to action: :index, notice: 'office was successfully destroyed.'
  end

  private

  def set_office
    @office = Office.find(params[:id])
  end

  def office_params
    params.require(:office).permit(:title, :description, :url, :x, :y, :hq)
  end
end
