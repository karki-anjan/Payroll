class EmployeesController < ApplicationController
before_action :authenticate_user!
  def index
    @employees = Employee.all
    @users = User.where(type: 'employee')
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
