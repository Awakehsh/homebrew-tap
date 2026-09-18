class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.10.0/vibechat-darwin-arm64"
      sha256 "7d0e0ccc95240a29fb80281af50d138d154334bcf030d5a1dbf18264b63e7bea"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.10.0/vibechat-darwin-x64"
      sha256 "8ac35266452d0dd0bc9083316161cc447af066661175f881c3576b6bbba535c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.10.0/vibechat-linux-arm64"
      sha256 "baaee2d70b441b5290c27526b54404207c0b86446d6b82cad7032979bb56c724"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.10.0/vibechat-linux-x64"
      sha256 "af6eda8cb957a9c6a4c08c9e14a1091e17cbab55e4193c049c90f1db59cc424f"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
