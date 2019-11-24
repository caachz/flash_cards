class CardGenerator

  def initialize(filename)
    @filename = filename
  end

  def open_file
   File.open(@filename).each do |line|
     puts line
    end
  end
end
