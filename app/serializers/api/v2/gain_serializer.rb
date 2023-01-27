class Api::V2::GainSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :descrption, :value, :date, :created_at, :updated_at, :is_late

  def is_late
    Date.current > object.date if object.date.present?
  end

  belongs_to :user
end
