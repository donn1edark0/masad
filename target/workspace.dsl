workspace "A minimal approach to software architecture documentation" {
    !identifiers hierarchical
    !docs internet-banking-system/docs/src

    model {
        !include model.dsl
        # !include deployment.dsl
    }

    views {
        theme default
        # !include views.dsl
        styles {
            !include styles.dsl
        }
    }
}  