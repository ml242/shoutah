class Search
#   extend ActiveModel::Naming
  include ActiveModel::Conversion
  attr_reader :term 

  def initialize(options = {})
    @term = options.fetch(:term, "")
  end

  def shouts
    Shout.search do
      fulltext @term
    end.results
  end

  private
  

  # def text_shouts
  #   TextShout.where("body LIKE ?", search_term)
  # end

  # def search_term 
  #   "$#{term}%"
  # end

end