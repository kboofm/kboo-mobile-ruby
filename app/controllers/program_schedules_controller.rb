class ProgramSchedulesController < ActionController::Base
  def index
    @schedule = ProgramSchedules.all
  end
end
