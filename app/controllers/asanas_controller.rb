# frozen_string_literal: true

class AsanasController < ApplicationController
  before_action :set_asana, only: %i[show edit update destroy]

  # GET /asanas
  # GET /asanas.json
  def index
    @asanas = Asana.joins(:exercise).merge(Exercise.order(:name)).order(:family_id)
  end

  # GET /asanas/1
  # GET /asanas/1.json
  def show; end

  # GET /asanas/new
  def new
    @asana = Asana.new do |asana|
      asana.exercise = Exercise.new
    end
  end

  # GET /asanas/1/edit
  def edit; end

  # POST /asanas
  # POST /asanas.json
  def create
    @asana = Asana.new(asana_params)

    respond_to do |format|
      if @asana.save
        format.html { redirect_to @asana, notice: 'Asana criado com sucesso.' }
        format.json { render :show, status: :created, location: @asana }
      else
        format.html { render :new }
        format.json { render json: @asana.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asanas/1
  # PATCH/PUT /asanas/1.json
  def update
    respond_to do |format|
      if @asana.update(asana_params)
        format.html { redirect_to @asana, notice: 'Asana atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @asana }
      else
        format.html { render :edit }
        format.json { render json: @asana.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asanas/1
  # DELETE /asanas/1.json
  def destroy
    @asana.destroy
    respond_to do |format|
      format.html { redirect_to asanas_url, notice: 'Asana excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_asana
    @asana = Asana.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def asana_params
    params.require(:asana).permit(
      :translation,
      :family_id,
      :advanced_actions,
      :connections,
      :observe,
      :benefits,
      :caution,
      :contraindications,
      :content,
      :setup,
      :entering,
      :legs,
      :core,
      :trunk,
      :arms,
      :head,
      :all,
      :leaving,
      :curiosities,
      exercise_attributes: %i[id name image],
      movement_ids: [],
      word_ids: [],
    )
  end
end
