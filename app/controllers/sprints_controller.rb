class SprintsController < ApplicationController
  before_action :authenticate_admin!
  
  def index
    @sprints = Sprint.all
  end

  def new
    @sprint = Sprint.new
  end

  def create
    Sprint.update_all({
      current: false
    })

    Sprint.create({
      sprint_number: params[:sprint_number]
      current: true
    })

    render "index.html.erb"
  end

  def show
    @sprint = Sprint.find(params[:id])
  end

  def edit
    @sprint = Sprint.find(params[:id])
  end

  def update
    sprint = Sprint.find(params[:id])

    sprint.assign_attributes({
      sprint_number: params[:sprint_number]
      current: params[:current]
    })

    sprint.save
  end

  def destroy
    sprint = Sprint.find(params[:id])
    sprint.destroy
  end
end