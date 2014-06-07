require 'rails_helper'

RSpec.describe "images/edit", :type => :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      :name => "MyString",
      :rating => 1,
      :description => "MyText",
      :category => "MyString"
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input#image_name[name=?]", "image[name]"

      assert_select "input#image_rating[name=?]", "image[rating]"

      assert_select "textarea#image_description[name=?]", "image[description]"

      assert_select "input#image_category[name=?]", "image[category]"
    end
  end
end
