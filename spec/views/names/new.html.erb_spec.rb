require 'spec_helper'

describe "names/new" do
  before(:each) do
    assign(:name, stub_model(Name,
      :db_entity => "MyString",
      :type => ""
    ).as_new_record)
  end

  it "renders new name form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", names_path, "post" do
      assert_select "input#name_db_entity[name=?]", "name[db_entity]"
      assert_select "input#name_type[name=?]", "name[type]"
    end
  end
end
