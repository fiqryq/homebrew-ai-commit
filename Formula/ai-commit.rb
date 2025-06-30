class AiCommit < Formula
  desc "AI-assisted Git commit message generator"
  homepage "https://github.com/fiqrychoerudin/ai-commit"
  url "https://github.com/fiqryq/ai-commit/archive/refs/tags/v1.0.0.tar.gz" 
  sha256 "2a3a530e367526c54c4ff708fe4760d90b1dca8955323edc6718b30ba61fae1a" 
  license "MIT"

  depends_on "lua"
  depends_on "luarocks"

  def install
    system "luarocks", "make", "ai-commit-1.0-1.rockspec", "--tree=#{libexec}"
    bin.install_symlink libexec/"bin/ai-commit"
  end

  test do
    system "#{bin}/ai-commit", "--show-config"
  end
end
