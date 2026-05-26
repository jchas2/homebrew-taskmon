class Taskmgr < Formula
  desc "Task Manager for the command line"
  homepage "https://github.com/jchas2/taskmgr-cli"
  version "1.5.2"

  url "https://github.com/jchas2/taskmgr-cli/releases/download/v#{version}/taskmgr-#{version}-macos-arm64.tar.gz"
  sha256 "b09157b2b45e9c321cb8013cd17d6825d1d3a6ac1d51fd4197cabd85e32d2c7b"

  def install
    bin.install "taskmgr"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskmgr --version")
  end
end
