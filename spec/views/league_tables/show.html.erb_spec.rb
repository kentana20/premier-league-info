require 'rails_helper'

RSpec.describe "league_tables/show.html.erb", :type => :view do

  describe 'title check' do
    it "title check" do
      visit '/league_tables/show'
      page.should have_title("PremierLeagueInfo")
    end
  end

end
