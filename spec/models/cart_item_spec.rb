require 'rails_helper'

RSpec.describe CartItem, type: :model do
	before(:each) do
	  	@cart_item = build(:cart_item)
 	end
 	it "カート内商品を作成できる" do
 		 expect(@cart_item).to be_valid
 	end

 	it "個数が選択されていない場合、無効にする" do
 		@cart_item.count = nil
 		@cart_item.valid?
 		expect(@cart_item.errors[:count]).to include("can't be blank")
 	end

 	#numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
 	it "個数が0個の場合、無効にする" do
 		@cart_item.count = 0
 		@cart_item.valid?
 		expect(@cart_item.errors[:count]).to include("must be greater than or equal to 1")
 	end

 	it "個数が10個以上の場合、無効にする" do
 		@cart_item.count = 11
 		@cart_item.valid?
 		expect(@cart_item.errors[:count]).to include("must be less than or equal to 10")
 	end
end
