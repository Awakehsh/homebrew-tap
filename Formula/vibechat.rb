class Vibechat < Formula
  desc "Terminal chat that looks like an AI coding agent session"
  homepage "https://github.com/Awakehsh/vibe-chat"
  version "0.5.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.2/vibechat-darwin-arm64"
      sha256 "f965507cb5531bf2b7ddda49c2bf8402b4caf178ca39de4561f599d641624abd"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.2/vibechat-darwin-x64"
      sha256 "7e9251ff3e41c31ec75418c657f10a17b57f2a6482914e5dd89be3c6421969f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.2/vibechat-linux-arm64"
      sha256 "0a60ee74137b6bf07e9456d626484945dd1a78d2a44cf869514c0147372f9466"
    end
    on_intel do
      url "https://github.com/Awakehsh/vibe-chat/releases/download/v0.5.2/vibechat-linux-x64"
      sha256 "e7c5f2f2214d19133a8a15da686c0e9f2e8907b0dbd9e7e77ad091c9ad66900c"
    end
  end

  def install
    bin.install Dir["vibechat-*"].first => "vibechat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vibechat --version")
  end
end
