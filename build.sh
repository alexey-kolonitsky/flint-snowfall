# Rebuild all examples

FLEX_HOME=/home/alexey/work/lib/sdk-4.5.1/bin

${FLEX_HOME}/mxmlc src/BitmapExample.as -output bin/BitmapExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/DisplayObjectExample.as -output bin/DisplayObjectExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/DotExample.as -output bin/DotExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/EllipseExample.as -output bin/EllipseExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/LineExample.as -output bin/LineExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/LineRendererExample.as -output bin/LineRendererExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/PixelRendererExample.as -output bin/PixelRendererExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/RadialDotExample.as -output bin/RadialDotExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/RectExample.as -output bin/RectExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/RingExample.as -output bin/RingExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true
${FLEX_HOME}/mxmlc src/StarExample.as -output bin/StarExample.swf -library-path+=libs -static-link-runtime-shared-libraries=true