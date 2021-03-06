QT      += widgets multimedia

TARGET   = $$qtLibraryTarget(MiamShellGui)
TEMPLATE = lib

MiamPlayerBuildDirectory = C:\dev\Miam-Player-build\src\Player

DEFINES += MIAM_PLUGIN
DEFINES += MIAM_PLUGIN_DLL

CONFIG  += c++11
CONFIG(debug, debug|release) {
    target.path = $$MiamPlayerBuildDirectory\debug\plugins
    LIBS += -Ldebug -lCore
}

CONFIG(release, debug|release) {
    target.path = $$MiamPlayerBuildDirectory\release\plugins
    LIBS += -Lrelease -lCore
}

INSTALLS += target

HEADERS += interfaces/basicplugin.h \
    interfaces/mediaplayerplugin.h \
    filehelper.h \
    listwidget.h \
    mediaplaylist.h \
    mediaplayer.h \
    mediaplayercontrol.h \
    miamcore_global.h \
    miamplayershell.h \
    settings.h

SOURCES += listwidget.cpp \
    miamplayershell.cpp

FORMS += config.ui

RESOURCES += resources.qrc

TRANSLATIONS += translations/MiamPlayerShell_ar.ts \
    translations/MiamPlayerShell_cs.ts \
    translations/MiamPlayerShell_de.ts \
    translations/MiamPlayerShell_en.ts \
    translations/MiamPlayerShell_es.ts \
    translations/MiamPlayerShell_fr.ts \
    translations/MiamPlayerShell_it.ts \
    translations/MiamPlayerShell_ja.ts \
    translations/MiamPlayerShell_kr.ts \
    translations/MiamPlayerShell_pt.ts \
    translations/MiamPlayerShell_ru.ts \
    translations/MiamPlayerShell_th.ts \
    translations/MiamPlayerShell_vn.ts \
    translations/MiamPlayerShell_zh.ts
