require 'rails_helper'

RSpec.describe comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメントの投稿' do
    context 'コメント投稿がうまくいかないとき' do
      it "commentが空だと登録できない" do
      end
    end
  end
end