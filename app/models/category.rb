# frozen_string_literal: true

# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  slug       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  ancestry   :string
#

class Category < ApplicationRecord
  has_ancestry
  has_many :categorizations, dependent: :destroy

  extend Mobility
  translates :slug, :name

  extend FriendlyId
  friendly_id :name, use: %i[slugged mobility]
  validates :name, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }
  validates :slug, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }

  default_scope { i18n.friendly }

  def should_generate_new_friendly_id?
    name_changed? || super
  end

  def products
    Product.includes(:categorizations).where(categorizations: { category: subtree })
  end
end
