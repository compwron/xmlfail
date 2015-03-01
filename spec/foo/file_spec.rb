require "spec_helper"
require 'pry'

describe PainMessageGenerator::Gar::File do
  describe "self.parse" do
    it "parses the format" do
      xml = File.read(
        File.expand_path("../../../resources/sample.xml", __FILE__)
      )

      file = PainMessageGenerator::Gar::File.parse(xml)
      # binding.pry
      file.notes_rename.count.should == 2
      file.notes_rename.first.entries.count.should == 1

      entry = file.notes.first.entries.first

    end
  end
end
