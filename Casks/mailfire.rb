cask "mailfire" do
  arch arm: "arm64", intel: "amd64"

  version "0.3.0"
  sha256 arm:   "c28bc7f4d34c82c42b784261790bf045f838caa5f785d643c62af235e288394e",
         intel: "f38370183bbca366d4dfa68f22864b78aacea9d4403ca2c203b2ddc9eece331b"

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
