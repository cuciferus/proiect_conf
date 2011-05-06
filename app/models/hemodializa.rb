class Hemodializa < ActiveRecord::Base
  belongs_to :pacient
  attr_accessible :lunar, :trimestrial, :semestrial
  attr_writer :current_step

  def current_step
    @current_step || steps.first
  end

  def steps
    %w[lunar trimestrial semestrial]
  end

  def next_step
    self.current_step = steps[steps.index(current_step)+1]
  end

  def preivous_step
    self.current_step = steps[steps.index(current_step)-1]
  end

  def first_step?
    current_step == steps.first
  end

  def last_step?
    current_step == steps.last
  end

  def all_valid?
    steps.all? do |step|
      self.current_step = step
      valid?
    end
  end
end
