class User < ApplicationRecord
  has_many :teams
  belongs_to :team, through :teams
end
