CONFIG *= console qtestlib testcase
CONFIG -= app_bundle
QT -= gui
QT *= network

TESTS_DIR = $$PWD
SRC_DIR = $$PWD/../src
DESTDIR = $$TESTS_DIR

LIBS += -L$$SRC_DIR -lzurl
PRE_TARGETDEPS += $$PWD/../src/libzurl.a
include($$PWD/../conf.pri)

COMMON_DIR = $$SRC_DIR/common

INCLUDEPATH += $$SRC_DIR
INCLUDEPATH += $$SRC_DIR/jdns
INCLUDEPATH += $$SRC_DIR/jdnsshared
INCLUDEPATH += $$SRC_DIR/qzmq/src

INCLUDEPATH += $$COMMON_DIR
DEFINES += NO_IRISNET

use_curl {
	DEFINES += USE_CURL
} else {
	DEFINES += USE_QNAM
}
