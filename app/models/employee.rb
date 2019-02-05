class Employee < ApplicationRecord
  enum gender: { other: 0, male: 1, female: 2 }

  validates :name, exclusion: { in: [nil] }
  validates :department, exclusion: { in: [nil] }
  validates :payment, exclusion: { in: [nil] }
  validates :note, exclusion: { in: [nil] }
end
