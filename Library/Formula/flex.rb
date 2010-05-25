require 'formula'

class Flex <Formula
  url 'http://downloads.sourceforge.net/project/flex/flex/flex-2.5.33/flex-2.5.33.tar.bz2?use_mirror=freefr'
  homepage 'http://flex.sourceforge.net/'
  md5 '343374a00b38d9e39d1158b71af37150'
  version '2.5.33'

# depends_on 'cmake'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
#   system "cmake . #{std_cmake_parameters}"
    system "make install"
  end
end
