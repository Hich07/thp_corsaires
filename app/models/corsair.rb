class Corsair < ApplicationRecord
  validates :age, :inclusion => {:in => 15..120}
  validates :slack_handle, format: { with: /\A[a-zA-Z0-9]+\Z/ }
  validates :github_handle, format: { with: /\A[a-zA-Z0-9]+\Z/ }




end
