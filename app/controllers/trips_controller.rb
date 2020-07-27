class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]


  # GET /trips
  # GET /trips.json
  def index
    @spring_code = "SP"
    @fall_code = "AU"
    # todo add some sort of check for both or non params, along with the year is an int and the semester is AU or SP
    if params[:year] and params[:semester]
      if params[:year].to_i > 2019 or (params[:year] == "2019" and params[:semester] == @fall_code)
        if params[:semester] == @fall_code
          semester_start_date = Date.parse("15-8-#{params[:year]}")
          semester_end_date = Date.parse("5-1-#{params[:year].to_i+1}")
        elsif params[:semester] == @spring_code
          semester_start_date = Date.parse("6-1-#{params[:year]}")
          semester_end_date = Date.parse("14-8-#{params[:year]}")
        else
          #todo raise error
        end
      else
      #todo raise error
      end
      @year = params[:year]
      @semester = params[:semester]
      @trips = Trip.all.where("leave_date >= :semester_begin_date and leave_date <= :semester_end_date", {
          semester_begin_date: semester_start_date,
          semester_end_date: semester_end_date
      })
    else
      @trips = Trip.all.where("leave_date >= ? ", Date.today )
    end

    @trips = @trips.order(leave_date: :asc)
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_params
      params.require(:trip).permit(:name, :activities, :img, :description, :leaders, :location, :leave_date, :return_date, :signup_time, :singup_style, :cost, :deposit, :contact, :max_capacity, :driver_discount, :driver_cost, :experiance_level, :signup_location)
    end
end
