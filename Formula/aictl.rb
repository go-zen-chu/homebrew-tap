class Aictl < Formula
    desc "Handy CLI tool to ask anything to generative AI in command line."
    homepage "https://github.com/go-zen-chu/aictl"
    url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.2/aictl_Darwin_arm64.tar.gz"
    sha256 "23e2ec29e339db208f09bc288a5db17a886c3e04d36d758a0631db1b5a86480f"
    version "1.0.2"

    def install
        bin.install "aictl"
    end

    test do
        system "#{bin}/aictl", "--help"
    end
end
