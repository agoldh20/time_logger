class SprintsController < ApplicationController
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
      sprint: params[:sprint]
      current: true
    })
  end

  def show
    @sprint = Sprint.find(params[:id])
  end

  def edit
    @sprint = Sprint.find(params[:id])
  end

  def update
    sprint = Sprint.find(params[:id])

    Sprint.assign_attributes({
      sprint: params[:sprint]
      current: true
    })
  end

  def destroy
    sprint = Sprint.find(params[:id])
    sprint.destroy
  end
end