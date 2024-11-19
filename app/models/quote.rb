class Quote < ApplicationRecord
  belongs_to :company
   validates :name, presence: true
   scope :ordered, -> { order(id: :desc) }
  #  broadcasts_to ->(quote) {"quotes" }, inserts_by: :prepend
  # broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend
  broadcasts_to ->(quote) {
  stream_name = [quote.company, "quotes"]
  puts "Broadcasting to: #{stream_name}"
  stream_name
}, inserts_by: :prepend

end
