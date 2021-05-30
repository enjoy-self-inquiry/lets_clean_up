require 'rails_helper'
describe 'レポートモデル機能', type: :model do
  describe 'バリデーションのテスト' do
    context 'レポートのタイトルが空の場合' do
      it 'バリデーションにひっかる' do
        report = Report.new(title: '', content: '失敗テスト')
        expect(report).not_to be_valid
      end
    end
    context 'レポートの詳細が空の場合' do
      it 'バリデーションにひっかかる' do
        report = Report.new(title: '失敗テスト', content: '')
        expect(report).not_to be_valid
      end
    end
    context 'レポートのタイトルと詳細に内容が記載されている場合' do
      it 'バリデーションが通る' do
        report = Report.new(title: '成功テスト', content: '成功')
        expect(report).to be_valid
      end
    end
  end
end
