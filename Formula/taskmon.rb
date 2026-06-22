class Taskmon < Formula
  desc "Task Monitor for the command line"
  homepage "https://github.com/jchas2/taskmon"
  version "1.7.1"

  url "https://github.com/jchas2/taskmon/releases/download/v#{version}/taskmon-#{version}-macos-arm64.tar.gz"
  sha256 "ec4bc91a72ebe487b08313c9113e5b81d4edb3873e96de329f86d1686a2ac19f"

  def install
    bin.install "taskmon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmon --version")
  end
end
