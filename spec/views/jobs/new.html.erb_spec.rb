require 'rails_helper'

RSpec.describe "jobs/new", type: :view do
  before(:each) do
    assign(:job, Job.new(
      :client => nil,
      :description => "MyText",
      :talenttype => "MyString",
      :payrate => "9.99",
      :jobzip => "MyString",
      :jobaddress => "MyText"
    ))
  end

  it "renders new job form" do
    render

    assert_select "form[action=?][method=?]", jobs_path, "post" do

      assert_select "input#job_client_id[name=?]", "job[client_id]"

      assert_select "textarea#job_description[name=?]", "job[description]"

      assert_select "input#job_talenttype[name=?]", "job[talenttype]"

      assert_select "input#job_payrate[name=?]", "job[payrate]"

      assert_select "input#job_jobzip[name=?]", "job[jobzip]"

      assert_select "textarea#job_jobaddress[name=?]", "job[jobaddress]"
    end
  end
end
