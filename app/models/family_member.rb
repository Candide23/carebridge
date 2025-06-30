class FamilyMember < ApplicationRecord
  has_many :family_members, dependent: :destroy
  belongs_to :user
end
