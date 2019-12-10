class TimeLogsController < ApplicationController
  def index
    @time_logs = TimeLog.all
  end

  def new
    @time_log = TimeLog.new
  end

  def create
    current_sprint = Sprint.find_by(current: true)

    @time_log = TimeLog.create({
      ticket: params[:ticket],
      action: params[:action],
      notes: params[:notes],
      currently_active_task: true,
      sprint_id: current_sprint.id
      sprint: current_sprint.sprint
    })

    @time_log.start_time = @time_log.created_at.strftime("%m/%d/%y %I:%M%p")
    @time_log.save
  end

  def show
    @time_log = TimeLog.find(params[:id])
  end

  def edit
    @time_log = TimeLog.find(params[:id])
  end

  def update
    time_log = TimeLog.find(params[:id])

    time_log.assign_attributes({
      ticket: params[:ticket],
      action: params[:action],
      notes: params[:notes],
      start_time: params[:start_time]
      end_time: params[:end_time]
    })
  end

  def destroy
    time_log = TimeLog.find(params[:id])
    time_log.destroy
  end
end
