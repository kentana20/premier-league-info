# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :league_table do
    position 1
    team_name "MyString"
    play 1
    win 1
    draw 1
    lose 1
    get_score 1
    concerned_score 1
    goal_diff 1
    point 1
  end
end
