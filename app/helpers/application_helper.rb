module ApplicationHelper
  def active_route?(test_path)
    return 'is-active' if request.path == test_path
    ''
  end

  def parent_nav_active?(path)
    rp = request.path
    rp == path || rp.include?(path)
  end
end
