# frozen_string_literal: true

class MovementsController < ApplicationController
  before_action :set_movement, only: %i[show edit update destroy]

  # GET /movements
  # GET /movements.json
  def index
    @movements = Movement.order(:joint, :name)
  end

  # GET /movements/1
  # GET /movements/1.json
  def show; end

  # GET /movements/new
  def new
    @movement = Movement.new
  end

  # GET /movements/1/edit
  def edit; end

  # POST /movements
  # POST /movements.json
  def create
    @movement = Movement.new(movement_params)

    respond_to do |format|
      if @movement.save
        format.html { redirect_to movements_path, notice: 'Movimento criado com sucesso.' }
        format.json { render :show, status: :created, location: @movement }
      else
        format.html { render :new }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movements/1
  # PATCH/PUT /movements/1.json
  def update
    respond_to do |format|
      if @movement.update(movement_params)
        format.html { redirect_to movements_path, notice: 'Movimento atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @movement }
      else
        format.html { render :edit }
        format.json { render json: @movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movements/1
  # DELETE /movements/1.json
  def destroy
    @movement.destroy
    respond_to do |format|
      format.html { redirect_to movements_url, notice: 'Movimento excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_movement
    @movement = Movement.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def movement_params
    params.require(:movement).permit(:name, :joint, :content)
  end
end
