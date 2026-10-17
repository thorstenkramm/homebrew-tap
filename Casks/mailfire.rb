cask "mailfire" do
  arch arm: "arm64", intel: "amd64"

  version "0.2.0"
  sha256 arm:   "fb5893d46a74cbdc8fb41723df4f3d9965d49ecaa3d86d5fae5b478ce9c54f21",
         intel: "7d266d52891dc01a469b13f0522c2fbdc91e4c370a6cf1e3eaa1d8ca50c1fef2"

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
