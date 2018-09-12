class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(employee_params)
    redirect_to @employee.company if @employee.save
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :area_id, :company_id)
  end
end
