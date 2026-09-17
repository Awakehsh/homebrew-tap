class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.2.0/vibechat-darwin-arm64"
      sha256 "4697505a2020d85fd3d63af8ac04bfa8ed877baf495598787ba794c628b6c8a1"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.2.0/vibechat-darwin-x64"
      sha256 "ca6633cce5a03002f132b3e91c7c8fb01ec97b7751a0b466a90668e450587eab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.2.0/vibechat-linux-arm64"
      sha256 "0042cbdd38f2913d98ad6920ba7c5fe3d77f8f2026fb708e281a00c88c93fe5b"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.2.0/vibechat-linux-x64"
      sha256 "ce2c6b412aeaf069fbf890ebf9f644c41dfdbdc1e3d9d6edd2a8a0a7617d3e01"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
