require 'paint'

module Gitfetcher
  module FormatString
    include Paint
    extend self

    def string
      [sha, shortlog, time].join " "
    end

    def sha
      Paint["%h", :yellow]
    end

    def shortlog
      "%s"
    end

    def time
      [
        Paint["(", :white],
        Paint["%ad", :cyan],
        Paint[")", :white],
      ].join
    end
  end
end
