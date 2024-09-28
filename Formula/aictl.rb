class Aictl < Formula
    desc "Handy CLI tool to ask anything to generative AI in command line."
    homepage "https://github.com/go-zen-chu/aictl"
    url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.0/aictl-1.0.0.tar.gz"
    sha256 "チ"
    version "1.0.0"

    def install
        bin.install "aictl"
    end

    test do
        system "#{bin}/aictl", "--help"
    end
end
