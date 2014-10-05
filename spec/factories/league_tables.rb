# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :league_table do
    position 1
    team_name "Chelsea"
    play 5
    win 4
    draw 1
    lose 0
    get_score 10
    concerned_score 2
    goal_diff 8
    point 13
  end
end
