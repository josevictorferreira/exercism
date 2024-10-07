class Acronym
  def self.abbreviate(text)
    text.gsub(/-/, ' ').gsub(/[^0-9A-Za-z ]/, "").split.map { |x| x[0] }.join.upcase
  end
end
