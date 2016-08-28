require 'rails_helper'
  describe Song do
    describe 'New song' do
      it 'adds a song to the list' do
        visit artist_path(1)
        test = Song.create(name: "Test", artist_id: 1)
        expect(page).to have_content("Test")
      end
    end
  end
end
