require 'rails_helper'

RSpec.describe Tweet, type: :model do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'ツイートの保存' do
    context "ツイートが保存できる場合" do
      it "全ての項目があればツイートは保存される" do
        expect(@tweet).to be_valid
      end
    end
    context '保存がうまくいかないとき' do
      it "coffee_priceが空だと保存できない" do
        @tweet.coffee_price = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Coffee price can't be blank")
      end
      it "coffee_priceが半角数字以外では保存できない" do
        @tweet.coffee_price = 'あああ'
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Coffee price is invalid")
      end
      it "tasty_idが空だと保存できない" do
        @tweet.tasty_id = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Tasty can't be blank")
      end
      it "tasty_idが--だと保存できない" do
        @tweet.tasty_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Tasty must be other than 1")
      end
      it "relaxation_idが空だと保存できない" do
        @tweet.relaxation_id = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Relaxation can't be blank")
      end
      it "relaxation_idが--だと保存できない" do
        @tweet.relaxation_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Relaxation must be other than 1")
      end
      it "under_ground_idが空だと保存できない" do
        @tweet.under_ground_id = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Under ground can't be blank")
      end
      it "under_ground_idが--だと保存できない" do
        @tweet.under_ground_id = 1
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Under ground must be other than 1")
      end
      it "store_nameが空だと保存できない" do
        @tweet.store_name = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Store name can't be blank")
      end
      it "addressが空だと保存できない" do
        @tweet.address = nil
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Address can't be blank")
      end
    end
  end
end