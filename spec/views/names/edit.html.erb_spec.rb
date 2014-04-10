require 'spec_helper'

describe "names/edit" do
  before(:each) do
    @name = assign(:name, stub_model(Name,
      :db_entity => "MyString",
      :type => ""
    ))
  end

  it "renders the edit name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", name_path(@name), "post" do
      assert_select "input#name_db_entity[name=?]", "name[db_entity]"
      assert_select "input#name_type[name=?]", "name[type]"
    end
  end
end
