module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    # Determine the current sort column and direction from params or session
    current_column = params[:sort] || session[:sort] || "title"
    current_direction = params[:direction] || session[:direction] || "asc"

    if column == current_column
      # Toggle the direction if currently sorted by this column
      new_direction = current_direction == "asc" ? "desc" : "asc"
      arrow = current_direction == "asc" ? "↑" : "↓"
      css_class = "sorted #{current_direction}"
      link_to "#{title} #{arrow}".html_safe, { sort: column, direction: new_direction }
    else
      link_to title, { sort: column, direction: "asc" }
    end
  end
end
