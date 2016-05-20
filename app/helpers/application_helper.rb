module ApplicationHelper
  def active_class(link_path)
    if request.env['PATH_INFO'] == link_path
      return "active"
    end
  end
end
