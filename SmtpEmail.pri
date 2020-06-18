INCLUDEPATH += $$PWD/src

CONFIG(debug, debug|release) {
    LIBS += -L$$PWD/../Binary/ -lSMTPEmaild
} else {
    LIBS += -L$$PWD/../Binary/ -lSMTPEmail
}
