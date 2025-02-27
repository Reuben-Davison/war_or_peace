require 'pry'
require 'rspec'
require './lib/deck.rb'
require './lib/card.rb'
require './lib/player.rb'




RSpec.describe Player do
  
  it "exists" do
    
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    
    expect(player).to be_an_instance_of(Player)
  end
  
  it "has_lost" do
    
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = [card1, card2, card3]
    
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
    
    expect(player.has_lost?).to eq(false)
  end
  
  
  it "lost" do
  
    card1 = Card.new(:diamond, 'Queen', 12)
    card2 = Card.new(:spade, '3', 3)
    card3 = Card.new(:heart, 'Ace', 14)
    cards = []
  
    deck = Deck.new(cards)
    player = Player.new('Clarisa', deck)
  
    expect(player.has_lost?).to eq(true)
  end
  

  
  
  
  
  
end
