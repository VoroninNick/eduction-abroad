module StudentHelper
  def render_student_menu
    @render_student_menu ||= Student.order('id DESC').all
  end
end
