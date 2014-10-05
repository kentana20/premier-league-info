class LeagueTablesController < ApplicationController
  def show
    # LeagueTableモデルからデータ取得
    @league_tables = LeagueTable.all
  end
end
