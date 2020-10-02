# frozen_string_literal: true

class VariationsController < ApplicationController
  before_action :set_variation, only: %i[show edit update destroy]

  # GET /variations
  # GET /variations.json
  def index
    @variations = Variation.joins(:exercise).merge(Exercise.order(:name)).order(:asana_id)
  end

  # GET /variations/1
  # GET /variations/1.json
  def show; end

  # GET /variations/new
  def new
    @variation = Variation.new do |variation|
      variation.exercise = Exercise.new
    end
  end

  # GET /variations/1/edit
  def edit; end

  # POST /variations
  # POST /variations.json
  def create
    @variation = Variation.new(variation_params)

    respond_to do |format|
      if @variation.save
        format.html { redirect_to @variation, notice: 'Variação criada com sucesso.' }
        format.json { render :show, status: :created, location: @variation }
      else
        format.html { render :new }
        format.json { render json: @variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /variations/1
  # PATCH/PUT /variations/1.json
  def update
    respond_to do |format|
      if @variation.update(variation_params)
        format.html { redirect_to @variation, notice: 'Variação atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @variation }
      else
        format.html { render :edit }
        format.json { render json: @variation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /variations/1
  # DELETE /variations/1.json
  def destroy
    @variation.destroy
    respond_to do |format|
      format.html { redirect_to variations_url, notice: 'Variação excluida com sucesso'}
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_variation
    @variation ||= Variation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def variation_params
    params.require(:variation).permit(
      :tagline,
      :content,
      :asana_id,
      exercise_attributes: %i[id name image],
      tag_ids: [],
    )
  end
end
