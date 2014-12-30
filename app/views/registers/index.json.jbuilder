json.array!(@registers) do |register|
  json.extract! register, :id, :name, :email, :register_no, :college_name, :dept_name, :mob_no
  json.url register_url(register, format: :json)
end
