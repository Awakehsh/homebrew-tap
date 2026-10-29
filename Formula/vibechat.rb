class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.11.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.2/vibechat-darwin-arm64"
      sha256 "9cdfc2860649b34843b5200b6651f538c51ca9eaeb3c4e9ed1750efd479a8290"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.2/vibechat-darwin-x64"
      sha256 "c894ece7281105ca733c0a0147636312781e9b9b3190ae9250b881c3499522a4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.2/vibechat-linux-arm64"
      sha256 "18f184889217959b2899506c6620007c711ea9e0bb50cb0b20ad2cae4f3abc78"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.11.2/vibechat-linux-x64"
      sha256 "d23b3daf63a86b554d797712577a2fa7274f0d7b783640d8c8a5cbbf7b074cd3"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
