require 'gitfetcher/git_helpers'

module Gitfetcher
  class Fetcher
    include GitHelpers

    POLL_TIME=90

    def initialize path
      @path = path
    end

    def report_head justify
      puts "[%#{justify}s] %s" % [project, git_status(@path)]
    end

    def project
      File.basename @path
    end

    def fetch
      git_fetch @path
    end

    def watch justify
      @thread ||= Thread.new do
        loop do
          fetch && report_head(justify)
          sleep POLL_TIME
        end
      end
    end

    def wait
      @thread.join
    end
  end
end
