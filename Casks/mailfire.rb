cask "mailfire" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "fc803fee9ba1835bd9e90121d045928a5a60db959ad2f27c484a4483f76d480a",
         intel: "be9b3ad26151367dfb4f765588b00cacc50a8758895f45967dc7a21921220afd"

  url "https://github.com/thorstenkramm/mailfire/releases/download/v#{version}/mailfire_#{version}_darwin_#{arch}.tar.gz"
  name "Mailfire"
  desc "Send email from the command-line via the Mailgun API"
  homepage "https://github.com/thorstenkramm/mailfire"

  depends_on :macos

  binary "mailfire"
  manpage "man/mailfire.1"
  bash_completion "completions/mailfire.bash", target: "mailfire"
  zsh_completion "completions/mailfire.zsh", target: "_mailfire"
end
