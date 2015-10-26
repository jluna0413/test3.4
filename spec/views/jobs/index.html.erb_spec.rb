require 'rails_helper'

RSpec.describe "jobs/index", type: :view do
  before(:each) do
    assign(:jobs, [
      Job.create!(
        :client => nil,
        :description => "MyText",
        :talenttype => "Talenttype",
        :payrate => "9.99",
        :jobzip => "Jobzip",
        :jobaddress => "MyText"
      ),
      Job.create!(
        :client => nil,
        :description => "MyText",
        :talenttype => "Talenttype",
        :payrate => "9.99",
        :jobzip => "Jobzip",
        :jobaddress => "MyText"
      )
    ])
  end

  it "renders a list of jobs" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Talenttype".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Jobzip".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
