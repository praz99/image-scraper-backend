require 'rails_helper'

RSpec.describe 'Image Scraper', type: :request do
  describe 'POST /scrape' do
    let(:valid_url) { { url: 'htttps://polebicycles.com/' } }

    context 'when the request is valid' do
      before { post '/scrape', params: { scraper: valid_url } }

      it 'returns an array of image urls' do
        expect(response).to have_http_status(200)
        expect(JSON.parse(response.body)).not_to be_empty
      end
    end

    context 'when the input URL is not valid' do
      before { post '/scrape', params: { scraper: { url: 'invalid URL' } } }

      it 'returns an invalid URL message' do
        expect(response).to have_http_status(200)
        expect(JSON.parse(response.body)).to eq('message' => 'This is not a valid URL.')
      end
    end

    context 'when the input URL is missing' do
      before { post '/scrape', params: { scraper: { url: '' } } }

      it 'returns an invalid URL message' do
        expect(response).to have_http_status(200)
        expect(JSON.parse(response.body)).to eq('message' => 'This is not a valid URL.')
      end
    end

    context 'when the input URL does not contain any images' do
      before { post '/scrape', params: { scraper: { url: 'https://abc' } } }

      it 'returns an no image message' do
        expect(response).to have_http_status(200)
        # rubocop:disable Layout/LineLength
        expect(JSON.parse(response.body)).to eq('message' => 'Oops! Looks like there are no images present in this webpage or maybe there is some error in the URL you entered. Please check it and try again.')
        # rubocop:enable Layout/LineLength
      end
    end
  end
end
