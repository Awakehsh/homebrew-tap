class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.0/vibechat-darwin-arm64"
      sha256 "536df88a5f7fa363976b01e2805d58148d7e9d0f2bb75f3ea62b362be02a767a"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.0/vibechat-darwin-x64"
      sha256 "a63efe78acccedf6a85a31237504cd5345b27e4af409074233ef79a21cde87c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.0/vibechat-linux-arm64"
      sha256 "f663c223d414af561e1700fcd04719a9244855b52f6ce1792d2712be4502236a"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.0/vibechat-linux-x64"
      sha256 "015c0b29e4a6b32a3e06f3405924ba00fbb1f3c3fe1fd104565aee5387ce6b53"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
