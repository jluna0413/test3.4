require 'rails_helper'

RSpec.describe "jobs/show", type: :view do
  before(:each) do
    @job = assign(:job, Job.create!(
      :client => nil,
      :description => "MyText",
      :talenttype => "Talenttype",
      :payrate => "9.99",
      :jobzip => "Jobzip",
      :jobaddress => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Talenttype/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Jobzip/)
    expect(rendered).to match(/MyText/)
  end
end
