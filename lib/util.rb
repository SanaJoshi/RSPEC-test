require 'csv'

module Util

  def self.read_csv_file(path)
    begin
      CSV.read(file)
    rescue
      return nil
    end
  end

  def self.read_first_line(path)
    # puts "made it"
    # puts "file is: #{__FILE__}"
    csv_path = File.expand_path("../" + path, __FILE__)

    contents = CSV.read(csv_path)
    # print contents[0..1]

    return contents[1].join(",")

  end

  def self.read_first_line(file)
  begin
    csv_filepath = File.expand_path("../" + file, __FILE__)
    arr_of_arrs = CSV.read(csv_filepath)
  rescue
    return nil
  end
  return arr_of_arrs[1].join(",")
end
    #
    # CSV.parse("CSV,data,String") do |row|
    # "1,Sissie,Caldecott,scaldecott0@yolasite.com,Female,112.164.157.133"
    # end

  end
