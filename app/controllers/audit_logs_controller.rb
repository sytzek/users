class AuditLogsController < ApplicationController
  before_action :set_user, only: :index

  # GET /users/1/audit_logs
  # GET /users/1/audit_logs.json
  def index
    @audit_logs = @user.audits
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:user_id])
  end
end
