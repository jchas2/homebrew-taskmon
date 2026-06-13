class Taskmon < Formula
  desc "Task Monitor for the command line"
  homepage "https://github.com/jchas2/taskmon"
  version "1.6.4"

  url "https://github.com/jchas2/taskmon/releases/download/v#{version}/taskmon-#{version}-macos-arm64.tar.gz"
  sha256 "c7d6538554a57b7723c69e4ade40084b54d9d31ffccf9f8eaf33f87d5a0887a1"

  def install
    bin.install "taskmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmon --version")
  end
end
