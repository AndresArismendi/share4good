json.array!(@references) do |reference|
  json.extract! reference, :id, :reference_mark, :reference_comment, :reference_answer, :reference_date
  json.url reference_url(reference, format: :json)
end
