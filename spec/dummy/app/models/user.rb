class User < ApplicationRecord
  # == Constants ============================================================

  # == Attributes ===========================================================
  serialize :preferences

  # == Extensions ===========================================================
  has_rich_text(:life_story) if Rails::VERSION::STRING > '6'

  # == Relationships ========================================================
  has_one :address
  accepts_nested_attributes_for :address

  # == Validations ==========================================================
  validates :email, presence: true, length: { minimum: 5 }
  validates :terms, acceptance: { accept: true }

  # == Scopes ===============================================================

  # == Callbacks ============================================================

  # == Class Methods ========================================================

  # == Instance Methods =====================================================
end
