
ui <- dashboardPage(
    skin = "black",
    dashboardHeader(title = "Split Keyboard Comparison"),
    dashboardSidebar(
        sidebarMenu(
            sidebarMenuItems()
        )
    ),
    dashboardBody(
        tabItems(
            tabItem(
                tabName = "compare",
                fluidRow(
                        box(
                            title = "Filters",
                            width = NULL,
                            collapsible = TRUE,
                            collapsed = TRUE,
                            # Buttons
                            filterButtons()
                        ),
                        box(
                            title = "Keyboards",
                            width = NULL,
                            # Buttons
                            sortSelectButtons(),
                            # Footer
                            footer()
                        ),
                        box(
                            width = NULL,
                            background = "black",
                            # Button
                            printButtons(),
                            # Image
                            imageOutput("layout")
                        )
                    )
            ),
            tabItem(
                tab = "keyboards",
                fluidRow(
                    box(
                        width = 12,
                        DT::dataTableOutput("keyboardsDT"), br(),
                        # Insert footer
                        footer(),
                        br()
                    )
                )
            ),
            tabItem(
                tab = "about",
                fluidRow(
                    box(
                        width = 7,
                        includeMarkdown("README.md"),
                        br(),
                        # Insert footer
                        footer(),
                        br()
                    )
                )
            )
        )
    )
)

