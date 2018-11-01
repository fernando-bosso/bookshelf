require_relative './index'

module Web
  module Views
    module Books
      class JsonIndex < Index
        format :json

        def render
          raw JSON.generate(books)
        end
      end
    end
  end
end
