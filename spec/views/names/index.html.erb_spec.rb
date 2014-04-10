require 'spec_helper'

describe "names/index" do
  before(:each) do
    assign(:names, [
      stub_model(Name,
        :db_entity => "Db Entity",
        :type => "Type"
      ),
      stub_model(Name,
        :db_entity => "Db Entity",
        :type => "Type"
      )
    ])
  end

  it "renders a list of names" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Db Entity".to_s, :count => 2
    assert_select "tr>td", :text => "Type".to_s, :count => 2
  end
end
