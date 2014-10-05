require "#{Rails.root}/app/models/league_table"
require "scraper"

class Tasks::Scrape
  def self.execute
    LeagueTable.delete_all

    doc = Scraper.table_list
    doc.xpath("//div[@class='responsive-table-content']/table/tbody").children.each_with_index do | trlist, idx |
      if trlist.node_name == 'tr' && idx != 1
        lt = LeagueTable.new
        lt.position = trlist.search("td[@class='pos']").text
        lt.team_name = trlist.search("td[@class='team']/a").text
        lt.play = trlist.search("td[@class='groupA']")[0].text
        lt.win = trlist.search("td[@class='groupA']")[1].text
        lt.draw = trlist.search("td[@class='groupA']")[2].text
        lt.lose = trlist.search("td[@class='groupA']")[3].text
        lt.get_score = trlist.search("td[@class='groupA']")[4].text
        lt.concerned_score = trlist.search("td[@class='groupA']")[5].text
        lt.goal_diff = trlist.search("td[@class='gd']").text
        lt.point = trlist.search("td[@class='pts']").text
        lt.save
      end
    end

    #puts "#{now.strftime("%Y/%m/%d %H-%M-%S")} scrape job end."
    puts "scrape job end."

  end
end
