class Localizable
  def self.to_s(key)
    BW::localized_string key, humanize(key)
  end

  private
  def self.humanize(str)
    str.to_s.gsub(/_id$/, "").gsub(/_/, " ").capitalize
  end
end
L = Localizable
