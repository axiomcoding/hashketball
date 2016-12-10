require_relative './spec_helper'
require_relative '../hashketball.rb'

describe '#game_hash' do
  it 'should return a hash' do
    expect(game_hash).to be_a(Hash)
  end
end

describe '#num_points_scored' do
  it 'knows the number of points scored by each player' do
    expect(num_points_scored("Stephen Curry")).to eq(30)
    expect(num_points_scored("Klay Thompson")).to eq(22)
    expect(num_points_scored("Draymond Green")).to eq(14)
    expect(num_points_scored("Harrison Barnes")).to eq(12)
    expect(num_points_scored("Andre Iguodala")).to eq(7)
    expect(num_points_scored("Eric Bledsoe")).to eq(20)
    expect(num_points_scored("Brandon Knight")).to eq(20)
    expect(num_points_scored("Devin Booker")).to eq(14)
    expect(num_points_scored("Mizra Teletovic")).to eq(12)
    expect(num_points_scored("TJ Warren")).to eq(11)
  end
end

describe '#shoe_size' do
  it 'knows the shoe size of each player' do
    expect(shoe_size("Stephen Curry")).to eq(13)
    expect(shoe_size("Klay Thompson")).to eq(16)
    expect(shoe_size("Draymond Green")).to eq(14)
    expect(shoe_size("Harrison Barnes")).to eq(15)
    expect(shoe_size("Andre Iguodala")).to eq(15)
    expect(shoe_size("Eric Bledsoe")).to eq(16)
    expect(shoe_size("Brandon Knight")).to eq(14)
    expect(shoe_size("Devin Booker")).to eq(17)
    expect(shoe_size("Mizra Teletovic")).to eq(19)
    expect(shoe_size("TJ Warren")).to eq(15)
  end
end

describe '#team_colors' do
  it 'knows the Phoenix Suns colors are Orange and Purple' do
    phoenix_colors = team_colors("Phoenix Suns")
    expect(phoenix_colors.size).to eq(2)
    phoenix_colors.each do |color|
      expect(["Orange", "Purple"]).to include(color)
    end
  end

  it 'knows the Golden State Warriors colors are Blue and Gold' do
    golden_state_colors = team_colors("Golden State Warriors")
    expect(golden_state_colors.size).to eq(2)
    golden_state_colors.each do |color|
      expect(["Blue", "Gold"]).to include(color)
    end
  end
end

describe '#team_names' do
  it 'returns the team names' do
    teams = team_names
    expect(teams.size).to eq(2)
    teams.each do |name|
      expect(["Golden State Warriors", "Phoenix Suns"]).to include(name)
    end
  end
end

describe '#player_numbers' do
  it 'returns the player jersey numbers' do
    golden_state_numbers = [9, 11, 23, 30, 40]
    phoenix_numbers = [1, 2, 3, 12, 35]

    expect(player_numbers("Phoenix Suns").sort).to eq(phoenix_numbers)
    expect(player_numbers("Golden State Warriors").sort).to eq(golden_state_numbers)
  end
end

describe '#player_stats' do
  let(:stephen_stats) {
    {
      :number => 30,
      :shoe => 13,
      :points => 30,
      :rebounds => 6,
      :assists => 8,
      :steals => 3,
      :blocks => 2
    }
  }

  let(:klay_stats) {
    { 
      :number => 11,
      :shoe => 16,
      :points => 22,
      :rebounds => 4,
      :assists => 3,
      :steals => 2,
      :blocks => 8
    }
  }

  let(:draymond_stats) {
    { 
      :number => 23,
      :shoe => 14,
      :points => 14,
      :rebounds => 10,
      :assists => 8,
      :steals => 2,
      :blocks => 3
    }
  }

  let(:harrison_stats) {
    { 
      :number => 40,
      :shoe => 15,
      :points => 12,
      :rebounds => 5,
      :assists => 2,
      :steals => 1,
      :blocks => 5
     }
  }

  let(:andre_stats) {
    { 
      :number => 9,
      :shoe => 15,
      :points => 7,
      :rebounds => 4,
      :assists => 3,
      :steals => 2,
      :blocks => 1 
    }
  }

  let(:eric_stats) {
    { 
      :number => 2,
      :shoe => 16,
      :points => 20,
      :rebounds => 14,
      :assists => 6,
      :steals => 2,
      :blocks => 5
    }
  }

  let(:brandon_stats) {
    { 
      :number => 3,
      :shoe => 14,
      :points => 20,
      :rebounds => 5,
      :assists => 5,
      :steals => 2,
      :blocks => 2
    }
  }

  let(:devin_stats) {
    { 
      :number => 1,
      :shoe => 17,
      :points => 14,
      :rebounds => 3,
      :assists => 3,
      :steals => 3,
      :blocks => 2
    }
  }

  let(:mizra_stats) {
    { 
      :number => 35,
      :shoe => 19,
      :points => 12,
      :rebounds => 8,
      :assists => 2,
      :steals => 1,
      :blocks => 4
    }
  }

  let(:tj_stats) {
    { 
      :number => 12,
      :shoe => 15,
      :points => 11,
      :rebounds => 3,
      :assists => 1,
      :steals => 1,
      :blocks => 4
    }
  }

  it 'returns all stats for a given player' do
    expect(player_stats("Stephen Curry")).to eq(stephen_stats)
    expect(player_stats("Klay Thompson")).to eq(klay_stats)
    expect(player_stats("Draymond Green")).to eq(draymond_stats)
    expect(player_stats("Harrison Barnes")).to eq(harrison_stats)
    expect(player_stats("Andre Iguodala")).to eq(andre_stats)
    expect(player_stats("Eric Bledsoe")).to eq(eric_stats)
    expect(player_stats("Brandon Knight")).to eq(brandon_stats)
    expect(player_stats("Devin Booker")).to eq(devin_stats)
    expect(player_stats("Mizra Teletovic")).to eq(mizra_stats)
    expect(player_stats("TJ Warren")).to eq(tj_stats)
  end
end

describe '#big_shoe_points' do
  it 'returns 12 points' do
    expect(big_shoe_points).to eq(12)
  end
end