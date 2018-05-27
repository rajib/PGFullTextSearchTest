class SearchIndent
  def initialize(query)
    @query = query
  end
  
  # warehouse no grp item make uom qt_p dt rq cc remarks details pr_po by status date person
  
  def details_similarity_search
    Indent.where("similarity(details, ?) > 0", @query).order("similarity(details, #{ActiveRecord::Base.connection.quote(@query)}) DESC")
  end
  
  def result 
    details_similarity_search
  end
end