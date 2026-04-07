cask "eos" do
  version "1.8.42"
  sha256 "757bce047cadcdb8beb5aa12b4b5bd387ca26a7e7579b3616e001648d6cbf5a4"

  url "https://api.github.com/repos/d-artemenko/eos/releases/assets/390853796",
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
