cask "eos" do
  version "1.8.38"
  sha256 "279dc4116fd838aadbefc175fe515745e4ecc1b86d2becec5bd65b09167cb250"

  url "https://api.github.com/repos/d-artemenko/eos/releases/assets/390601570",
      verified: "api.github.com/repos/d-artemenko/eos/releases/assets/",
      header: [
        "Accept: application/octet-stream",
        "Authorization: Bearer #{ENV.fetch('HOMEBREW_GITHUB_API_TOKEN')}",
      ]
  name "eos"
  desc "AI workspace shell for Pi"
  homepage "https://github.com/d-artemenko/eos"

  depends_on arch: :arm64

  app "eos.app"

  zap trash: [
    "~/Library/Application Support/eos",
    "~/Library/Caches/com.eos.app",
    "~/Library/Logs/eos",
    "~/Library/Preferences/com.eos.app.plist",
    "~/Library/Saved Application State/com.eos.app.savedState",
  ]
end
