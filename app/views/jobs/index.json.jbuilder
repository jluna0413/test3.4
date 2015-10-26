json.array!(@jobs) do |job|
  json.extract! job, :id, :client_id, :description, :jobstart, :jobend, :talenttype, :payrate, :jobzip, :jobaddress
  json.url job_url(job, format: :json)
end
