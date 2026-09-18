class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.7.0/vibechat-darwin-arm64"
      sha256 "d23f43412f4ed878afe22942b5e1aeb62c859f8bc636efbc36ffe4c281f78dc7"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.7.0/vibechat-darwin-x64"
      sha256 "5e938bb2161aa073f7b85dbf3dd8e8e889dbcbc50c017fa0b616f4586c1519cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.7.0/vibechat-linux-arm64"
      sha256 "51eeb88a6e7340996a88c9709dbd8bb822e42bdee9fff703d6ed34fa8100d64f"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.7.0/vibechat-linux-x64"
      sha256 "a0df185fd71da40a4499dafdecd38cdfc553910b22788ad3a78d74fd74b86a50"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
