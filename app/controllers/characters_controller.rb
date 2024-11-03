class CharactersController < ApplicationController
  def index
    @characters = Character.all

    if params[:query].present?
      @characters = @characters.where("LOWER(name) LIKE ?", "%#{params[:query].downcase}%")
    end

    if params[:alignment].present?
      @characters = @characters.where(alignment: params[:alignment])
    end

    if params[:alive_status].present?
      @characters = @characters.where(alive_status: params[:alive_status])
    end

    if params[:min_appearances].present?
      @characters = @characters.where("appearances >= ?", params[:min_appearances].to_i)
    end

    @characters = @characters.page(params[:page]).per(15)
  end

  def show
    @character = Character.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to characters_path, alert: "Character not found."
  end
end

