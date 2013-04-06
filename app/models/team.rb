# == Schema Information
#
# Table name: teams
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Team < ActiveRecord::Base
  attr_accessible :name
  has_many :projects
  has_many :team_memberships
  has_many :users, :through => :team_memberships
 
end
