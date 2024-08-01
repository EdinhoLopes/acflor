class CourseEntitiesController < ApplicationController
  before_action :set_course_entity, only: %i[ show edit update destroy ]

  # GET /course_entities or /course_entities.json
  def index
    @course_entities = CourseEntity.all
  end

  # GET /course_entities/1 or /course_entities/1.json
  def show
  end

  # GET /course_entities/new
  def new
    @course_entity = CourseEntity.new
  end

  # GET /course_entities/1/edit
  def edit
  end

  # POST /course_entities or /course_entities.json
  def create
    @course_entity = CourseEntity.new(course_entity_params)

    respond_to do |format|
      if @course_entity.save
        format.html { redirect_to course_entity_url(@course_entity), notice: "Course entity was successfully created." }
        format.json { render :show, status: :created, location: @course_entity }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @course_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_entities/1 or /course_entities/1.json
  def update
    respond_to do |format|
      if @course_entity.update(course_entity_params)
        format.html { redirect_to course_entity_url(@course_entity), notice: "Course entity was successfully updated." }
        format.json { render :show, status: :ok, location: @course_entity }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @course_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_entities/1 or /course_entities/1.json
  def destroy
    @course_entity.destroy

    respond_to do |format|
      format.html { redirect_to course_entities_url, notice: "Course entity was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_entity
      @course_entity = CourseEntity.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def course_entity_params
      params.require(:course_entity).permit(:entity_id, :course_id)
    end
end
