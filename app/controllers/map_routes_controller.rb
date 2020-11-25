require 'time'
class MapRoutesController < ApplicationController
  
  def index
    @map_routes = MapRoute.all
  end

  def new
  end

  def create
    uploaded_file = params[:archivo]
    @map_stops = JSON.parse(uploaded_file.read)
    keys_base = ["nid", "base", "llegada", "salida", "carga", "destino"]
    valid = true
    # Valida que el file tiene todos los campos necesarios
    @map_stops.each do |stop|
      stop[:status] = 'OK'
      keys_base.each do |key|
        if !stop.keys.include?(key)
          stop[:status] = 'FAIL'
          valid = false
        end
      end
      # valida que los valores no sean ni nil ni vacíos
      stop.values.each do |value|
        if value == nil || value == ""
          stop[:status] = 'FAIL'
          valid = false
        end  
      end  
    end

    if valid
      route = {}
      stops_sorted = @map_stops.sort_by { |map| map["llegada"] }
      route[:base] = stops_sorted.first["base"]
      route[:start_time] = stops_sorted.first["llegada"]
      route[:delivery_time] = stops_sorted.last["salida"]
      route[:cargo] = stops_sorted.inject(0) {|sum, n| sum + n["carga"].to_i}
      route[:route_time] = route_total_time(route[:start_time],route[:delivery_time])
      route[:route_name] = params[:route_name]
      route[:file_name] = uploaded_file.original_filename
      route[:date] = params[:date]

      @map_route = MapRoute.new(route)
      @map_route.save

    end

  end

  def show
    
  end
  
  private
  
  def route_total_time(start_time, delivery_time)  
    start = Time.parse(start_time)
    delivery = Time.parse(delivery_time)
    difference = delivery - start #tiempo en segundos
    hours_minutes = (difference/60).divmod(60)
    if hours_minutes.count == 2
      "#{hours_minutes[0].to_i}:#{hours_minutes[1].to_i}"
    else  
      ''  
    end  
  end  

  
end
