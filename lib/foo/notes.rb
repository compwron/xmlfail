module PainMessageGenerator
  module Gar
    class Notes
      include SAXMachine

      elements :apples, :as => :apples_rename, :class => Apple
    end
  end
end
