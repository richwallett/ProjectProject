# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :teams_attributes
  has_many :team_memberships
  has_many :teams, :through => :team_memberships
end
