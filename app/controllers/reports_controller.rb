class ReportsController < ApplicationController
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  def new
    @report = Report.new
  end

  def create
    @report = Report.new(report_params)
    if params[:back]
      render :new
    else
      if @report.save
        redirect_to reports_path, notice: "レポートを作成しました！"
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @report.update(report_params)
      redirect_to reports_path, notice: "レポートを編集しました！"
    else
      render :edit
    end
  end

  def index
    @reports = report.all
  end

  def show
    @report = report.find(params[:id])
  end

  def destroy
    @report.destroy
    redirect_to reports_path, notice: "レポートを削除しました！"
  end


  private

  def report_params
    params.require(:report).permit(:title, :content)
  end

  def set_report
    @report = report.find(params[:id])
  end
end
