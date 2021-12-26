
ui <- dashboardPage(
    skin = "black",
    dashboardHeader(
        title = "Split Keyboard Comparison",
        tags$li(class = "dropdown", style = "margin-right: 15px; margin-top: 15px;", footer())
        ),
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
                    column(
                        width = 3,
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
                        )
                    ),
                    column(
                        width = 9,
                        box(
                            title = "Keyboard Overlay",
                            width = NULL,
                            # Button
                            printButtons(),
                            # Image
                            imageOutput("layout", height = 530)
                        )
                    )
                )
            ),
            tabItem(
                tab = "keyboards",
                fluidRow(
                    box(
                        width = 12,
                        DT::dataTableOutput("keyboardsDT"), 
                    )
                )
            ),
            tabItem(
                tab = "about",
                fluidRow(
                    box(
                        width = 7,
                        includeMarkdown("README.md"),
                    )
                )
            )
        )
    )
)

