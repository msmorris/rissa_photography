require 'rails_helper'

RSpec.describe "images/index", :type => :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        :name => "Name",
        :rating => 1,
        :description => "MyText",
        :category => "Category"
      ),
      Image.create!(
        :name => "Name",
        :rating => 1,
        :description => "MyText",
        :category => "Category"
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
  end
end
