module PainMessageGenerator
  module CAMT54
    class File < OpenStruct
      include SAXMachine

      elements :notes, :as => :notes_rename, :class => Notes
    end
  end
end
