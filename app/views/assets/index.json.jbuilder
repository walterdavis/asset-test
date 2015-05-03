json.array!(@assets) do |asset|
  json.extract! asset, :id, :project_id, :blob_file_name, :blob_content_type, :blob_file_size, :blob_width, :blob_height, :blob_metadata
  json.url asset_url(asset, format: :json)
end
