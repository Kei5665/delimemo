require 'rails_helper'

RSpec.describe "Posts", type: :system do
  let(:post) { create(:post) }

  describe '投稿機能', js: true do

    describe '新規作成機能' do
      it '正常にタイトル、本文、画像が登録される' do
        visit root_path
        pin = find("#map", visible: false)
        pin.click
        expect(page).to have_content "img[src$='spotlight-poi2_hdpi.png']"
      end
      it '正常にタイトル、本文、画像が登録される表示される' do
      end  
    end
    
    describe '削除機能' do
      it '正常に削除される' do
      end  
    end

    describe '検索機能' do
      it '正常に場所を検索できる' do
      end  
      it '正常に検索先を保存できる' do
      end  
      it '正常に保存先が表示される' do
      end  
    end
  end
end
