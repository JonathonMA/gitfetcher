require 'gitfetcher/format_string'
require 'open3'

module Gitfetcher
  module GitHelpers
    extend self

    # returns true if an update occurred
    def git_fetch path
      Open3.popen2e *%W(git fetch origin), chdir: path do |stdin, stdout, _wait|
        not stdout.read.chomp.empty?
      end
    end

    def git_status path
      pretty_format=FormatString.string
      Open3.popen2 *%W(git log -1 --pretty=format:#{pretty_format} origin/master), chdir: path do |stdin, stdout, _wait|
        stdout.read.chomp
      end
    end
  end
end
