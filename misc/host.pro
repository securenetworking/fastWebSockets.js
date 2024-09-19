TEMPLATE = app
CONFIG += console c++1z
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        src/host.cpp \
        src/addon.cpp \
        fastWebSockets/fastSockets/src/eventing/epoll.c \
        fastWebSockets/fastSockets/src/context.c \
        fastWebSockets/fastSockets/src/socket.c \
        fastWebSockets/fastSockets/src/eventing/libuv.c \
        fastWebSockets/fastSockets/src/ssl.c \
        fastWebSockets/fastSockets/src/loop.c


#Separate the Node.js addon from host compilation
QMAKE_CXXFLAGS += -DADDON_IS_HOST

INCLUDEPATH += /home/alexhultman/v8/v8/include
INCLUDEPATH += fastWebSockets/src
INCLUDEPATH += fastWebSockets/fastSockets/src

# We can link statically when I figure out how to compile V8 properly
LIBS += /home/alexhultman/v8/v8/out/x64.release/libv8_libplatform.so
LIBS += /home/alexhultman/v8/v8/out/x64.release/libv8_libbase.so
LIBS += /home/alexhultman/v8/v8/out/x64.release/libv8.so
LIBS += /home/alexhultman/v8/v8/out/x64.release/libicui18n.so
LIBS += /home/alexhultman/v8/v8/out/x64.release/libicuuc.so

LIBS += -lssl -lcrypto
