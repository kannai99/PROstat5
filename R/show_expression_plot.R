#' Show Expression Plot
#'
#' Generates a bar plot for protein expression levels.
#' This requires the 'ggplot2' package to create a graphical representation of the protein expression levels in datasets. 
#' @param expression_data A data frame with two columns: Proteins and ExpressionLevels.
#' @return A bar plot showing the expression levels of proteins.
#' @examples
#' proteins <- c("Protein A", "Protein B", "Protein C")
#' levels <- c(23, 45, 10)
#' data <- data.frame(Proteins = proteins, ExpressionLevels = levels)
#' show_expression_plot(data)
#' @references
#' Hadley Wickham. ggplot2: Elegant Graphics for Data Analysis. Springer-Verlag New York, 2016.
#' Wilkinson, Leland. The Grammar of Graphics. Springer-Verlag, 2005.
#' @export
show_expression_plot <- function(expression_data) {
    if (!("ggplot2" %in% installed.packages())) {
        stop("ggplot2 package need to be installed.")
    }

    library(ggplot2)
    
    ggplot(expression_data, aes(x = Proteins, y = ExpressionLevels, fill = Proteins)) +
        geom_bar(stat = "identity") +
        theme_minimal() +
        labs(title = "Protein Expression Levels", x = "Proteins", y = "Expression Level")
}
