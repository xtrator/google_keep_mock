class NotesController < ApplicationController
  before_action :set_note, only: %i[ show edit update destroy ]

  # GET /notes
  def index
    @notes = Note.active
  end

  # GET /notes/1
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to notes_path, notice: "Note was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to root_path, notice: "Note was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  def destroy
    @note.trashed!
    @note.save
    respond_to do |format|
      format.html { redirect_to notes_path, notice: "Note was successfully sent to trash." }
    end
  end

  def restore
    @note = Note.find(params[:note])
    @note.active!
    @note.save

    respond_to do |format|
      format.html { redirect_to trash_path, notice: "Note was successfully restored." }
    end

  end

  def trash
    @notes = Note.trashed
    @is_trash_page = true
    render :index
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def note_params
      params.require(:note).permit(:title, :body)
    end
end
