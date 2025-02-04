# Generated by tools/update-brew-tap.py. DO NOT EDIT!
# Please refers to the original template file Formula/openllm.rb.j2
# vim: set ft=ruby:
class Openllm < Formula
  desc "OpenLLM: Operating LLMs in production"
  homepage "https://github.com/bentoml/OpenLLM"
  version "0.4.33"
  license "Apache-2.0"
  head "https://github.com/bentoml/OpenLLM, branch: main"
  url "https://github.com/bentoml/OpenLLM/archive/v0.4.33.tar.gz"
  sha256 "3c8cfb8521827d8bc32227da0891c77e0c7a5226ef611c6ad91ac9ceb5e8db39"

  on_linux do
    url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.33/openllm-0.4.33-x86_64-unknown-linux-musl.tar.gz"
    sha256 "487d7a27182bc1b817db9f706c782029a47ef2548b2e0dcca4fe465d7a44d96b"
  end
  on_macos do
    on_arm do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.33/openllm-0.4.33-aarch64-apple-darwin.tar.gz"
      sha256 "e9d81ceb370932089a6fbf4a37f1cf5b2bcff6a18c04429b71b22d8cb9abb6c9"
    end
    on_intel do
      url "https://github.com/bentoml/OpenLLM/releases/download/v0.4.33/openllm-0.4.33-x86_64-apple-darwin.tar.gz"
      sha256 "225a3188ba9784edac97c95280a5cebd12de8774f4cf7522b81ba3fa25f931bf"
    end
  end

  def install
    on_linux do
      bin.install "openllm-0.4.33-x86_64-unknown-linux-musl" => "openllm"
    end
  on_macos do
    on_arm do
      bin.install "openllm-0.4.33-aarch64-apple-darwin" => "openllm"
    end
    on_intel do
      bin.install "openllm-0.4.33-x86_64-apple-darwin" => "openllm"
    end
  end
    ohai "To get started, run: 'openllm --help'"
    ohai "To see supported models, run: 'openllm models'"
  end

  test do
    shell_output "#{bin}/openllm --version"
  end
end
