require 'rails_helper'
RSpec.describe 'レポート管理機能', type: :system do
  describe '新規作成機能' do
    context 'レポートを新規作成した場合' do
      it '作成したレポートが表示される' do
      # 1. new_report_pathに遷移する（新規作成ページに遷移する）
      # ここにnew_report_pathにvisitする処理を書く
        visit new_report_path
      # 2. 新規登録内容を入力する
      #「レポート名」というラベル名の入力欄と、「レポート詳細」というラベル名の入力欄にレポートのタイトルと内容をそれぞれ入力する
      # ここに「レポート名」というラベル名の入力欄に内容をfill_in（入力）する処理を書く
      # ここに「レポート詳細」というラベル名の入力欄に内容をfill_in（入力）する処理を書く
        fill_in "Title", with: 'test_title'
        fill_in "Content", with: 'test_content'
      # 3. 「登録する」というvalue（表記文字）のあるボタンをクリックする
      # ここに「登録する」というvalue（表記文字）のあるボタンをclick_onする（クリックする）する処理を書く
        click_on '登録する'
      # 4. clickで登録されたはずの情報が、レポート詳細ページに表示されているかを確認する
      # （レポートが登録されたらレポート詳細画面に遷移されるという前提）
      # ここにレポート詳細ページに、テストコードで作成したデータがレポート詳細画面にhave_contentされているか（含まれているか）を確認（期待）するコードを書く
        expect(page).to have_content 'test_title'
      end
    end
  end
  describe '一覧表示機能' do
    context '一覧画面に遷移した場合' do
      it '作成済みのレポート一覧が表示される' do
        # テストで使用するためのレポートを作成
        report = FactoryBot.create(:report, title: 'report')
        # レポート一覧ページに遷移
        visit reports_path
        # visitした（遷移した）page（レポート一覧ページ）に「report」という文字列が
        # have_contentされているか（含まれているか）ということをexpectする（確認・期待する）
        expect(page).to have_content 'report'
        # expectの結果が true ならテスト成功、false なら失敗として結果が出力される
      end
    end
  end
  describe '詳細表示機能' do
     context '任意のレポート詳細画面に遷移した場合' do
       it '該当レポートの内容が表示される' do
         @report = FactoryBot.create(:report,title: 'report1',content: 'content1' )
         visit report_path(@report)
         expect(page).to have_content 'report1'
         expect(page).to have_content 'content1'
       end
     end
  end
end
