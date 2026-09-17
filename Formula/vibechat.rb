class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.1/vibechat-darwin-arm64"
      sha256 "2cf75e3bd7474a5a5696a3e12dae47210eb5e9d6ecf240a9bed67dcf8e482112"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.1/vibechat-darwin-x64"
      sha256 "972448e7a5d111bd2a7419d6401b1deb6ee292d9f46944a7fa06239ad8bc90b3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.1/vibechat-linux-arm64"
      sha256 "26e23970ffbbb9a03a79f86dac9bdf48809db3feee1cdb18c22933af04ab7fd2"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.1/vibechat-linux-x64"
      sha256 "3a3b49f30614caff9009a4fcb8c0b1fd70e7acfb89af81ae69b195ff8ba9f178"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
