class Employee < ApplicationRecord
  GENDERS = { other: 0, male: 1, female: 2 }

  enum gender: GENDERS

  validates :gender, inclusion: { in: GENDERS.keys.concat(GENDERS.keys.map(&:to_s)) }, exclusion: { in: [nil] }
  validates :name, exclusion: { in: [nil, ""] }
  validates :department, exclusion: { in: [nil] }
  validates :payment, numericality: true, exclusion: { in: [nil] }
  validates :note, exclusion: { in: [nil] }
end
