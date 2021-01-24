class ReceiversController < ApplicationController
  before_action :set_receiver, only: [:show, :update, :destroy]

  # GET /receivers
  def index
    @receivers = Receiver.all

    # render json: @receivers
    render json: ReceiverSerializer.new(@receivers).serializable_hash[:data].map{|has| has[:attributes]}
  end

  # GET /receivers/1
  def show
    render json: @receiver
  end

  # POST /receivers
  def create
    @receiver = Receiver.new(receiver_params)

    if @receiver.save
      render json: @receiver, status: :created, location: @receiver
    else
      render json: @receiver.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /receivers/1
  def update
    if @receiver.update(receiver_params)
      render json: @receiver
    else
      render json: @receiver.errors, status: :unprocessable_entity
    end
  end

  # DELETE /receivers/1
  def destroy
    @receiver.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receiver
      @receiver = Receiver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def receiver_params
      params.require(:receiver).permit(:first_name, :last_name, :sender_id, :completed)
    end
end
