class Link < MassiveRecord::ORM::Table

  def self.new_id(url)
    Zlib.crc32(url).to_s(36)
  end

  column_family :core do
    field :link
  end
  
  column_family :meta do
    field :title
    field :summary
  end  
end
