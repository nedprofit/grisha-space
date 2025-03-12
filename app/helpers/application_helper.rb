module ApplicationHelper
  def happy_birthday_day?
    Date.current.day == 15 && Date.current.month == 3
  end
end
