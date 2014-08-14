class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  # GET /notes
  # GET /notes.json
  def index
    #@notes = Note.all
    @notes = Note.search(params[:search])
    @panel = ["panel panel-primary", "panel panel-success", "panel panel-info", "panel panel-warning", "panel panel-danger", "panel panel-default"]
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
    @short_titles_bodies = Note.all

    @short_titles_bodies.each do |short_title_body|
      if short_title_body.title.length > 36
        short_title_body.title = short_title_body.title[0,35]
      end
      if short_title_body.body.length > 19
        short_title_body.body = short_title_body.body[0,18]
      end
    end

  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  # POST /notes.json
  def create
    @note = Note.new(note_params)
    @note.date = DateTime.now
    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'ノートが作成されました。' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'ノートが更新されました。' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to notes_url, notice: 'ノートが削除されました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.require(:note).permit(:title, :body, :date, group_ids: [])
    end
end
