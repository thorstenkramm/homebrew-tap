cask "mailfire" do
  arch arm: "arm64", intel: "amd64"

  version "0.4.0"
  sha256 arm:   "7c2eac82cf934e6c2f7e07dd0216d1511aa241913acb8648f96cc8cf4d3bf0f4",
         intel: "1411aed1f8dcb5c554f96b4475400877d0b561b0f8f38b65578ad24ea937f960"

  url "https://github.com/thorstenkramm/mailfire/releases/download/v#{version}/mailfire_#{version}_darwin_#{arch}.tar.gz"
  name "Mailfire"
  desc "Send email from the command-line via Mailgun, Gmail, or SMTP"
  homepage "https://github.com/thorstenkramm/mailfire"

  depends_on :macos

  binary "mailfire"
  manpage "man/mailfire.1"
  bash_completion "completions/mailfire.bash", target: "mailfire"
  zsh_completion "completions/mailfire.zsh", target: "_mailfire"
end
