module ApplicationHelper

  def full_title(page_title = '')
    base_title = "Affinity Direct"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def google_fonts
      'https://fonts.googleapis.com/css?family=Arvo:400,700|Black+Han+Sans|Cookie|Cute+Font|Do+Hyeon|Fjalla+One|Gaegu:300,400,700|Gamja+Flower|Great+Vibes|Gugi|Roboto|Satisfy'
  end
  
  def html_link(href, rel, type)
    "<link href='#{href}' rel='#{rel}' type='#{type}'/>"
  end
  
  
end
