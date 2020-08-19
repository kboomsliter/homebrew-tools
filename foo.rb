class Foobar < Formula
  desc "<description of the formula>"
  homepage "<project url>"
  url "https://<artifact url>?private_token=#{ENV['GITLAB_HOMEBREW_TOKEN']}"
  version "<version>"
  sha256 "<sha>"
def install
    mv Dir.glob("foo-*").first, "foo"
    bin.install "foo"
  end
  test do
    foo help
  end
end
