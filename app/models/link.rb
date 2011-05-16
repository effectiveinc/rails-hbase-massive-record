class Link < MassiveRecord::ORM::Table

  def self.new_id
    Time.now.to_i.to_s(36)
  end

  default_scope select(:core)

  column_family :core do
    field :link
  end
end
