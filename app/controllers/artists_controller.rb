class ArtistsController < ApplicationController
    before_action :find_artist, only: [:show]

    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def create
        @artist = Artist.create(artist_params)
        if @artist.valid?
            redirect_to artist_path(@artist)
        else
            flash[:errors] = @artist.errors.full_messages
            redirect_to new_artist_path
        end
    end

    private

    def find_artist
        @artist = Artist.find(params[:id])
    end

    def artist_params
        params.require(:artist).permit(:name, :age, :title)
    end
end
