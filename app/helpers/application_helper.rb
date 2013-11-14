module ApplicationHelper
  def full_title(page_title)
    base_title = 'KBOO'
    if page_title.empty?
      base_title + ' Community Radio'
    else
      "#{page_title} | #{base_title}"
    end
  end
end
