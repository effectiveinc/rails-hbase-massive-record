class Link < MassiveRecord::ORM::Table

  def self.new_id(url)
    Zlib.crc32(url).to_s(36)
  end

  default_scope select(:core)

  column_family :core do
    field :link
  end
end
