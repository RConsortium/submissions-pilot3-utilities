# fmt_num works

    Code
      fmt_num(4.25, digits = 3)
    Output
      [1] "  4.250"

# fmt_est works

    Code
      fmt_est(1.25, 0.5)
    Output
      [1] "  1.2 ( 0.50)"

# fmt_pval works

    Code
      fmt_pval(0.52, digits = 3)
    Output
      [1] "  0.520"

# fmt_ci works

    Code
      fmt_ci(-2.5, -0.09, 2.07)
    Output
      [1] "-2.50 (-0.09, 2.07)"

