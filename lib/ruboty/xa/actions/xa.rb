module Ruboty
  module Xa
    module Actions
      class Xa < Ruboty::Actions::Base
        XA_LETTERS = %w[ｗ Ｗ]
        XA_MAX_LENGTH = 6

        def initialize(message)
          @message = message
        end

        def call
          message.reply(grow_xa)
        end

        private

        def grow_xa
        end

        def make_xa
          xa_length.times.inject("") { |xa| xa + XA_LETTERS.sample }
        end

        def xa_length
          rand(XA_MAX_LENGTH) + 1
        end
      end
    end
  end
end
