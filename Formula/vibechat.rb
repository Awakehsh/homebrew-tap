class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.6.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.2/vibechat-darwin-arm64"
      sha256 "60df43e6898a3085a1e1370ff8c705976689d16795a171bbb3f69974f785631e"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.2/vibechat-darwin-x64"
      sha256 "9be08833635da29af03611f47cc7824002f8d41ece4b1287fd8ad945c1d69de8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.2/vibechat-linux-arm64"
      sha256 "7509ec5127e921429c1dd12ba2f581d34c3b486dabf7c8faca6ca50171fad361"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.6.2/vibechat-linux-x64"
      sha256 "6d3d30e875b61e37514cff16ca2a501935fd75c2f45cef121c7491f9e9339619"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
