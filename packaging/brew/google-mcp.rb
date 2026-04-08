class GoogleMcp < Formula
  desc "Model Context Protocol servers for Google services (Gmail, Drive, Calendar)"
  homepage "https://github.com/greatliontech/google-mcp"
  version "VERSION"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_darwin_arm64.tar.gz"
      sha256 "CHECKSUM_DARWIN_ARM64"
    else
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_darwin_amd64.tar.gz"
      sha256 "CHECKSUM_DARWIN_AMD64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_linux_arm64.tar.gz"
      sha256 "CHECKSUM_LINUX_ARM64"
    else
      url "https://github.com/greatliontech/google-mcp/releases/download/v#{version}/google-mcp_#{version}_linux_amd64.tar.gz"
      sha256 "CHECKSUM_LINUX_AMD64"
    end
  end

  def install
    bin.install "google-mcp"

    generate_completions_from_executable(bin/"google-mcp", "completion")
  end

  test do
    system "#{bin}/google-mcp", "version"
  end
end
