module ReportsHelper
  def choose_new_or_edit
    if action_name == 'new'
      confirm_reports_path
    elsif action_name == 'edit'
      report_path
    end
  end
end
