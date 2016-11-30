#!/bin/sh

CMD2='./out/gn/content_unittests \
--gtest_filter="*Recorder*.*:" \
--enable-logging=stderr \
-vmodule="*media*=3,*video*=3,*webm*=2"'

CMD3='./out/gn/media_unittests \
--gtest_filter="*Webm*.*" \
--enable-logging=stderr \
-vmodule="*webm*=2"'

echo $CMD2
eval $CMD2
echo $CMD3
eval $CMD3
