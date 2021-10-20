#-------------------------------------------------
#
# Project created by QtCreator 2011-08-11T20:59:25
#
#-------------------------------------------------

QT       += core network

CONFIG += debug-and-release

isEmpty(LIBLOCATION){
    LIBLOCATION=Binary # Defaulting to original path for backward compatibility
    message("Defaulting Lib Location")
}

message("Compiling Applogger Library at " $$LIBLOCATION)

DESTDIR = $$PWD/../$$LIBLOCATION

CONFIG(debug, debug|release){
    TARGET = SMTPEmaild
}else{
    TARGET = SMTPEmail
}

# Build as an application
#TEMPLATE = app

# Build as a library
TEMPLATE = lib
DEFINES += SMTP_BUILD
win32:CONFIG += dll

SOURCES += \
    src/emailaddress.cpp \
    src/mimeattachment.cpp \
    src/mimefile.cpp \
    src/mimehtml.cpp \
    src/mimeinlinefile.cpp \
    src/mimemessage.cpp \
    src/mimepart.cpp \
    src/mimetext.cpp \
    src/smtpclient.cpp \
    src/quotedprintable.cpp \
    src/mimemultipart.cpp \
    src/mimecontentformatter.cpp \

HEADERS  += \
    src/emailaddress.h \
    src/mimeattachment.h \
    src/mimefile.h \
    src/mimehtml.h \
    src/mimeinlinefile.h \
    src/mimemessage.h \
    src/mimepart.h \
    src/mimetext.h \
    src/smtpclient.h \
    src/SmtpMime \
    src/quotedprintable.h \
    src/mimemultipart.h \
    src/mimecontentformatter.h \
    src/smtpexports.h

OTHER_FILES += \
    LICENSE \
    README.md

headers.files=$$HEADERS
headers.path=$$DESTDIR/include
INSTALLS+=headers

otherfiles.files=$$OTHER_FILES
otherfiles.path=$$DESTDIR/
INSTALLS+=otherfiles

FORMS +=

DISTFILES += \
    SmtpEmail.pri
