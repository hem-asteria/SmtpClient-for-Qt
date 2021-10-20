INCLUDEPATH += $$PWD/src

CONFIG(debug, debug|release) {
#    LIBS += -L$$PWD/../Binary/ -lSMTPEmaild
    LIBS += -L"$$PWD/../$$LIBLOCATION" -lSMTPEmaild
} else {
#    LIBS += -L$$PWD/../Binary/ -lSMTPEmail
    LIBS += -L"$$PWD/../$$LIBLOCATION" -lSMTPEmail
}
