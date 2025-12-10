class Cdir < Formula
    desc "cdir allows you to quickly navigate to a directory recorded into your history"
    homepage "https://github.com/AmadeusITGroup/cdir"    
    url "https://github.com/AmadeusITGroup/cdir/releases/download/v0.0.4/cdir-aarch64-apple-darwin.tar.gz"
    sha256 "4d02b01de070986c1749290f4d9aa7889b7d37cc7a69b393da8ccbdf3e4d226c"
    license "Apache-2.0 license"


    def install
        cp_r ".", prefix, remove_destination: true
        bin.install "cdir"
        bin.install "cdir_funcs.sh"
        chmod 0555, bin/"cdir_funcs.sh"
    end

end
