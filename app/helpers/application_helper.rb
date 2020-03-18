# frozen_string_literal: true

module ApplicationHelper
  def no(page)
    ((page.current_page - 1) * page.limit_value) + 1
  end
end
