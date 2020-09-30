# frozen_string_literal: true

class ExerciseRelationsController < ApplicationController
  before_action :set_exercise_relation, only: %i[edit update destroy]

  # GET /asanas
  # GET /asanas.json
  def index
    @exercise_relations = ExerciseRelation.all
  end

  # GET /asanas/1/new
  def new
    @exercise_relation = ExerciseRelation.new
    @exercises = Exercise.all.sort { |a, b| a.full_name <=> b.full_name }
  end

  # GET /asanas/1/edit
  def edit; end

  # POST /asanas
  # POST /asanas.json
  def create
    @exercise_relation = ExerciseRelation.new(exercise_relation_params)

    respond_to do |format|
      if @exercise_relation.save
        format.html { redirect_to exercise_relations_path, notice: 'Relação criada com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /asanas/1
  # PATCH/PUT /asanas/1.json
  def update
    respond_to do |format|
      if @exercise_relation.update(exercise_relation_params)
        format.html { redirect_to exercise_relations_path, notice: 'Relação atualizada com sucesso.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /asanas/1
  # DELETE /asanas/1.json
  def destroy
    @exercise_relation.destroy
    respond_to do |format|
      format.html { redirect_to exercise_relations_url, notice: 'Relação excluída com sucesso.' }
    end
  end

  private

  def set_exercise_relation
    @exercise_relation = ExerciseRelation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def exercise_relation_params
    params.require(:exercise_relation).permit(
      :relatable_id,
      :related_id,
      :comment,
      :category
    )
  end
end
