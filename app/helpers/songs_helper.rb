module SongsHelper

    def artist_select(song, from_artist)
        if !from_artist
            if song.artist.nil?
            select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
            else
            hidden_field_tag "song[artist_id]", song.artist_id
            end
        else
            text_field_tag "song[artist_name]", song.artist.name
        end
    end

end
