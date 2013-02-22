class Round < ActiveRecord::Base
  has_one :deck
  has_many :guesses

  def play_card
    # will return card that has not been played
  end

  def played_count
  end

  def unplayed_count
  end

  def complete!
    self.update_attributes(:complete => true)
  end

  private
  def unplayed_cards
    Card.includes(:guess).where(:guess => {:round_id => self.id, 
                                           :attempt => nil})
  end
end
