class Aictl < Formula
    desc "Handy CLI tool to ask anything to generative AI in command line."
    homepage "https://github.com/go-zen-chu/aictl"
    url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.2/aictl_Darwin_arm64.tar.gz"
    sha256 "f0ca921cab8b403e2be46c67971f5e221d15d2e4d355f8c3f0d0b2b7e794a320"
    version "1.0.2"

    def install
        bin.install "aictl"
    end

    test do
        system "#{bin}/aictl", "--help"
    end
end
