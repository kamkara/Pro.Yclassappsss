class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  #Enables implicit order column for UUID
  self.implicit_order_column = "created_at"

  scope :ordered, -> { order(id: :desc) }

  #refactory order items
  scope :student, -> { where("status = ?", "Student").order("created_at desc")}
  scope :daily_sign_up, -> { where("created_at >= ?", Time.zone.now.beginning_of_day)}

end
