class BookedLectureRoomsController < ApplicationController
  before_action :set_booked_lecture_room, only: [:show, :edit, :update, :destroy]

  # GET /booked_lecture_rooms
  # GET /booked_lecture_rooms.json
  def index
    @booked_lecture_rooms = BookedLectureRoom.all
  end

  # GET /booked_lecture_rooms/1
  # GET /booked_lecture_rooms/1.json
  def show
  end

  # GET /booked_lecture_rooms/new
  def new
    @booked_lecture_room = BookedLectureRoom.new
  end

  # GET /booked_lecture_rooms/1/edit
  def edit
  end

  # POST /booked_lecture_rooms
  # POST /booked_lecture_rooms.json
  def create
    @booked_lecture_room = BookedLectureRoom.new(booked_lecture_room_params)

    respond_to do |format|
      if @booked_lecture_room.save
        format.html { redirect_to @booked_lecture_room, notice: 'Booked lecture room was successfully created.' }
        format.json { render :show, status: :created, location: @booked_lecture_room }
      else
        format.html { render :new }
        format.json { render json: @booked_lecture_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /booked_lecture_rooms/1
  # PATCH/PUT /booked_lecture_rooms/1.json
  def update
    respond_to do |format|
      if @booked_lecture_room.update(booked_lecture_room_params)
        format.html { redirect_to @booked_lecture_room, notice: 'Booked lecture room was successfully updated.' }
        format.json { render :show, status: :ok, location: @booked_lecture_room }
      else
        format.html { render :edit }
        format.json { render json: @booked_lecture_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /booked_lecture_rooms/1
  # DELETE /booked_lecture_rooms/1.json
  def destroy
    @booked_lecture_room.destroy
    respond_to do |format|
      format.html { redirect_to booked_lecture_rooms_url, notice: 'Booked lecture room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booked_lecture_room
      @booked_lecture_room = BookedLectureRoom.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def booked_lecture_room_params
      params.require(:booked_lecture_room).permit(:name, :person, :data, :time, :hours)
    end
end
