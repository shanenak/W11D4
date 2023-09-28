# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint           not null
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord

    validates :name, length: {less_than: 255}
    validates :price, length: {greater_than_or_equal_to: 0}

    validates :pokemon_id, :happiness, :image_url, presence: true

    belongs_to :pokemon

end
