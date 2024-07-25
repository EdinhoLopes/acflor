class StudentHistoriesController < ApplicationController
  before_action :set_student_history, only: %i[ show edit update destroy ]

  # GET /student_histories or /student_histories.json
  def index
    @student_histories = StudentHistory.all
  end

  # GET /student_histories/1 or /student_histories/1.json
  def show
  end

  # GET /student_histories/new
  def new
    @student_history = StudentHistory.new
  end

  # GET /student_histories/1/edit
  def edit
  end

  # POST /student_histories or /student_histories.json
  def create
    @student_history = StudentHistory.new(student_history_params)

    respond_to do |format|
      if @student_history.save
        format.html { redirect_to student_history_url(@student_history), notice: "Student history was successfully created." }
        format.json { render :show, status: :created, location: @student_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @student_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_histories/1 or /student_histories/1.json
  def update
    respond_to do |format|
      if @student_history.update(student_history_params)
        format.html { redirect_to student_history_url(@student_history), notice: "Student history was successfully updated." }
        format.json { render :show, status: :ok, location: @student_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @student_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_histories/1 or /student_histories/1.json
  def destroy
    @student_history.destroy

    respond_to do |format|
      format.html { redirect_to student_histories_url, notice: "Student history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_history
      @student_history = StudentHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_history_params
      params.require(:student_history).permit(:student, :references, :course_id, :grade)
    end
end
