TEMPLATE = app
CONFIG += console c++1z
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        ../src/addon.cpp \
        ../fastWebSockets/fastSockets/src/eventing/epoll.c \
        ../fastWebSockets/fastSockets/src/context.c \
        ../fastWebSockets/fastSockets/src/socket.c \
        ../fastWebSockets/fastSockets/src/eventing/libuv.c \
        ../fastWebSockets/fastSockets/src/ssl.c \
        ../fastWebSockets/fastSockets/src/loop.c

INCLUDEPATH += ../targets/node-v11.1.0/include/node
INCLUDEPATH += ../fastWebSockets/src
INCLUDEPATH += ../fastWebSockets/fastSockets/src

HEADERS += \
    ../src/AppWrapper.h \
    ../src/HttpRequestWrapper.h \
    ../src/HttpResponseWrapper.h \
    ../src/Utilities.h \
    ../src/WebSocketWrapper.h
