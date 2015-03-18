module ApplicationHelper

  def icon(*names)
    content_tag :i, nil, class: names.map{|name| "fa fa-#{name.to_s.gsub('_','-')}" }
  end
end
