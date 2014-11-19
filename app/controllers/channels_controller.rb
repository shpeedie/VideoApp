class ChannelsController < ApplicationController
  before_action :set_channel, only: [:show, :edit, :update, :destroy]

  def index
    @channels = Channel.all
    respond_with(@channels)
  end

  def show
    respond_with(@channel)
  end

  def new
    @channel = Channel.new
    respond_with(@channel)
  end

  def edit
  end

  def create
    @channel = Channel.new(channel_params)
    @channel.save
    respond_with(@channel)
  end

  def update
    @channel.update(channel_params)
    respond_with(@channel)
  end

  def destroy
    @channel.destroy
    respond_with(@channel)
  end

  private
    def set_channel
      @channel = Channel.find(params[:id])
    end

    def channel_params
      params.require(:channel).permit(:name)
    end
end
