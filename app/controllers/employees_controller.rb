class EmployeesController < ApplicationController
def create
  @division = Division.find(params[:division_id])
  @employee = @division.employees.create(employee_params)
  redirect_to @division
end

def new
  @division = Division.find(params[:division_id])
  @employee = @division.employees.new
end

def destroy
  @division = Division.find(params[:division_id])
  @employee = @division.employees.find(params[:id])
  @employee.destroy
  redirect_to @division
end

private
  def employee_params
    params.require(:employee).permit(:employee_name)
  end
end
