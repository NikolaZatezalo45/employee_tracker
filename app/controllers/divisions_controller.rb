class DivisionsController < ApplicationController
  def index
    @divisions = Division.all
  end

  def create
    @division = Division.new(division_params)
    @division.save
    redirect_to @division
  end

  def update
    @division = Division.find(params[:id])
    @division.update(division_params)
    redirect_to @division
  end

  def new
    @division = Division.new
  end

  def edit
    @division = Division.find(params[:id])
  end

  def show
    @division = Division.find(params[:id])
    @employees = @division.employees.all
  end

  def destroy
    @division = Division.find(params[:id])
    @division.destroy
    redirect_to divisions_path
  end

  private
  def division_params
    params.require(:division).permit(:division_name)
  end
end
