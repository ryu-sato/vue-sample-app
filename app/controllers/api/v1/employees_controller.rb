class Api::V1::EmployeesController < ApiController
  before_action :set_employee, only: [:show]

  # ActiveRecordのレコードが見つからなければ404 not foundを応答する
  rescue_from ActiveRecord::RecordNotFound do |exception|
    render json: { error: '404 error' }, status: 404
  end

  def index
    employees = Employee.all
    render json: employees
  end

  def show
    render json: @employee
  end

  private

    def set_employee
      @employee = Employee.find(params[:id])
    end
end
