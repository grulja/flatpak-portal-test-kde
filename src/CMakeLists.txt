set(flatpak_portal_test_kde_SRCS
    main.cpp
    portaltest.cpp
)

ki18n_wrap_ui(flatpak_portal_test_kde_SRCS
    portaltest.ui
)

add_executable(portal-test-kde ${flatpak_portal_test_kde_SRCS})

target_link_libraries(portal-test-kde
    Qt5::Core
    Qt5::DBus
    Qt5::Widgets
    KF5::I18n
    KF5::KIOFileWidgets
    KF5::Notifications
)


install(TARGETS portal-test-kde DESTINATION ${KDE_INSTALL_TARGETS_DEFAULT_ARGS})
install(PROGRAMS org.kde.portaltest.desktop DESTINATION ${XDG_APPS_INSTALL_DIR} )
install(FILES org.kde.portaltest.appdata.xml DESTINATION ${KDE_INSTALL_METAINFODIR})

add_subdirectory(icons)
