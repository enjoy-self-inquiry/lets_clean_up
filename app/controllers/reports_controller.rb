class ReportsController < ApplicationController
  def new
      @report = Report.new
    end
    def create
      @report = Report.new(report_params)
      if @report.save
      else
        render :new
      end
    end
    private
    def report_params
      params.require(:report).permit(:title, :content)
    end
end
