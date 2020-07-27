json.extract! trip, :id, :name, :activities, :img, :description, :leaders, :location, :leave_date, :return_date, :signup_time, :singup_style, :cost, :deposit, :contact, :max_capacity, :driver_discount, :driver_cost, :experiance_level, :signup_location, :created_at, :updated_at
json.url trip_url(trip, format: :json)
