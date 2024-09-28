class Aictl < Formula
    desc "Handy CLI tool to ask anything to generative AI in command line."
    homepage "https://github.com/go-zen-chu/aictl"
    version "1.0.4"
    
    on_macos do
        if Hardware::CPU.arm?
            url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.4/aictl_Darwin_arm64.tar.gz"
            sha256 "d7703233c5a6e7c4dfad95ebc66a0a569adacdfc9a60ada335710919e02d274e"
        else
            url "https://github.com/go-zen-chu/aictl/releases/download/v1.0.4/aictl_Darwin_x86_64.tar.gz"
            sha256 "8d308147f1ce0be96c7ccd81a27b619da913384dab819e6486c2cfe723691890"
        end
    end

    def install
        bin.install "aictl"
    end

    test do
        system "#{bin}/aictl", "--help"
    end
end
