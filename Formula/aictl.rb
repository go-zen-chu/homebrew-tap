class Aictl < Formula
    desc "Handy CLI tool to ask anything to generative AI in command line."
    homepage "https://github.com/go-zen-chu/aictl"
    version "%[1]s"
    
    on_macos do
        if Hardware::CPU.arm?
            url "https://github.com/go-zen-chu/aictl/releases/download/v%[1]s/aictl_Darwin_arm64.tar.gz"
            sha256 "cab0c349bcacddb719fd30af36a39ca91704fefe1efb8e05d17d726c66400afd"
        else
            url "https://github.com/go-zen-chu/aictl/releases/download/v%[1]s/aictl_Darwin_x86_64.tar.gz"
            sha256 "3c10570fd5f9a20a11cfb04b732193b7b5d1cbc52742933ec4fd0aa11150fff6"
        end
    end

    def install
        bin.install "aictl"
    end

    test do
        system "#{bin}/aictl", "--help"
    end
end
1.0.3