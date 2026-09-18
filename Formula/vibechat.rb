class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.9.0/vibechat-darwin-arm64"
      sha256 "31864cd84570b544f718889fae17a53c69fc4aa3c96ec2c5e6ae9e37de2f1194"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.9.0/vibechat-darwin-x64"
      sha256 "78454616adf6b705371574b5f17f0c4e004efd838396d67c0c4197831548e77a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.9.0/vibechat-linux-arm64"
      sha256 "6cd7c7ca93df58311eafddd77582aa6b731d275dd809a3aa22667f0b349c2122"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.9.0/vibechat-linux-x64"
      sha256 "dbdb97f4c88282082459f00d2303f2524c93f271e33cb3909f28f8661e49a008"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
