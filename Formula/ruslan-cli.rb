class RuslanCli < Formula
  desc "CLI tool for managing HashiCorp Vault across multiple environments"
  homepage "https://github.com/dautovri/ruslan-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dautovri/ruslan-cli/releases/download/v0.1.0/ruslan-cli_darwin_arm64.tar.gz"
      sha256 "40c5df8c35031b83f3245e5f1dda8ed0a077a1394228ce2835bb58dca77646b0"
    else
      url "https://github.com/dautovri/ruslan-cli/releases/download/v0.1.0/ruslan-cli_darwin_amd64.tar.gz"
      sha256 "a76914956a4bfc5cdea0d5dae853bcc3101498c0dfa30d2e490a997e9760d691"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dautovri/ruslan-cli/releases/download/v0.1.0/ruslan-cli_linux_arm64.tar.gz"
      sha256 "REPLACE_WITH_ARM64_HASH"
    else
      url "https://github.com/dautovri/ruslan-cli/releases/download/v0.1.0/ruslan-cli_linux_amd64.tar.gz"
      sha256 "c0ad6a145a200c14a248d194875a901400b3d805385627da142c38c70ba9d2b8"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ruslan-cli-darwin-arm64" => "ruslan-cli"
      else
        bin.install "ruslan-cli-darwin-amd64" => "ruslan-cli"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "ruslan-cli-linux-arm64" => "ruslan-cli"
      else
        bin.install "ruslan-cli-linux-amd64" => "ruslan-cli"
      end
    end
  end

  test do
    system "#{bin}/ruslan-cli", "--help"
  end
end
