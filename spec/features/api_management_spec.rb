require 'rails_helper'

RSpec.feature 'apimanagement', focus: true do

  scenario 'get json' do
    q1 = Question.create title: "What are helpers in Rails?"
    visit api_v1_questions_path

    expect(page).to have_text (q1.to_json)
  end

end

# describe "GET /listings.json" do
#   before do
#     get :index, format: :json
#   end

#   context 'all listings' do
#     it 'returns the listings' do
#       expect(json.collect{|l| l["title"]}).to include(@listing1.title)
#     end
#   end