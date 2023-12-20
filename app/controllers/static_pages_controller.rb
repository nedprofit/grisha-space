class StaticPagesController < ApplicationController
  def index
    @current_page = t(:label_home)
  end

  def about
    @current_page = t(:label_about)
  end

  def articles
  end

  def projects
    @current_page = t(:label_projects)
  end

  def skills
    @current_page = t(:label_skills)
  end

  def tools
    @current_page = t(:label_tools)
  end
end
