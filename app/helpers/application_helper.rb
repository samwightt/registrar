module ApplicationHelper
  def active_route?(test_path)
    return 'is-active' if request.path == test_path
    ''
  end
end
