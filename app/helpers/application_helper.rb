module ApplicationHelper
  
  # Return a title on a per-page basis.
  def title
    base_title = "Rails3 Tutorial"
    if @title.nil?
      base_title
    else
      "#{base_title} | #{@title}"
    end
  end
  
  # Returns an logo image html
  def logo
    image_tag("logo.png", :alt => "Sample App", :class => "round")
  end
end
