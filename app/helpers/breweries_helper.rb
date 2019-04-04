module BreweriesHelper
  def brewery_nav
    previous_brewery = Brewery.find_by(id: @brewery.id - 1)
    next_brewery = Brewery.find_by(id: @brewery.id + 1)
    
    if previous_brewery
      previous_link = link_to t('previous'), brewery_path(previous_brewery), id: "previous-link"
    end
    
    if next_brewery
      next_link = link_to t('next'), brewery_path(next_brewery), id: "next-link"
    end
    
    if previous_brewery && next_brewery
      previous_link + "|" + next_link
    elsif previous_brewery && !next_brewery
      previous_link
    elsif next_brewery && !previous_brewery
      next_link
    end
  end
    
    
end
