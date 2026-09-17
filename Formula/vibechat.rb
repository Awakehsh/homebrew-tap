class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.1/vibechat-darwin-arm64"
      sha256 "9fc0f8b70d8f652c9308cef370d3f99bb068c0d1529f142c6921771ec9a74d70"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.1/vibechat-darwin-x64"
      sha256 "3ca7517cdb675aeec01b1a2cc5fdb773053a48297f91453fcc751f09b7b49bcf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.1/vibechat-linux-arm64"
      sha256 "8bd40d72e5da94c03c2933258aeee23e6e409b8cf3ac6d90f61461138d0df384"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.4.1/vibechat-linux-x64"
      sha256 "d782e68ca8a6217916b25510fb9168aa0dd8de16e207cf45624a7fcab22bf78d"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
