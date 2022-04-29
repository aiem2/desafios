class ProjectsController < ApplicationController
  def dashboard
    if params[:buscar] == 'Todos' 
      @proyectos = Proyecto.all.reverse_order
      elsif
        params[:buscar].present?
        @proyectos = Proyecto.where('state = ?', params[:buscar])
      else
        @proyectos = Proyecto.all.reverse_order
    end   
  end
  
  def create
    @proyecto = Proyecto.create(title: params[:title], description: params[:description], date_start: params[:date_start], date_end: params[:date_end], state: params[:state])
  end
end
