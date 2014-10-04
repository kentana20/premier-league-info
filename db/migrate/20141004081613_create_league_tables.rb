class CreateLeagueTables < ActiveRecord::Migration
  def change
    create_table :league_tables do |t|
      t.integer :position
      t.string :team_name
      t.integer :play
      t.integer :win
      t.integer :draw
      t.integer :lose
      t.integer :get_score
      t.integer :concerned_score
      t.integer :goal_diff
      t.integer :point

      t.timestamps
    end
  end
end
