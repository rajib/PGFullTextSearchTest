class Indent < ActiveRecord::Base
  include PgSearch
  
  default_scope { order('created_at DESC')}
  
  pg_search_scope :search_for_full_text, against: %i(warehouse no grp item make uom qt_p dt rq cc remarks details pr_po by status date person),
  using: {tsearch: {dictionary: "english"}, trigram: {only: [:warehouse, :no, :grp, :details]}},
  ignoring: :accents
  
  paginates_per 50
end
