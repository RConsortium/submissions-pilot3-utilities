# nest_rowlabels works

    Code
      nest_rowlabels(.data)
    Output
      # A tibble: 12 x 7
         row_label            var1_placebo    var1_x~1 var1_~2 ord_l~3 ord_l~4 ord_l~5
         <chr>                <chr>           <chr>    <chr>     <dbl>   <dbl>   <dbl>
       1 Baseline             ""              ""       ""            1       0       0
       2 n                    "79"            "74"     "81"          1       1       1
       3 Mean (SD)            "24.1 (12.19)"  "21.3 (~ "24.4 ~       1       1       2
       4 Median (Range)       "21.0 (  5;61)" "18.0 (~ "21.0 ~       1       1       3
       5 Week 24              ""              ""       ""            2       0       0
       6 n                    "79"            "74"     "81"          2       1       1
       7 Mean (SD)            "26.7 (13.79)"  "22.8 (~ "26.4 ~       2       1       2
       8 Median (Range)       "24.0 (  5;62)" "20.0 (~ "25.0 ~       2       1       3
       9 Change from Baseline ""              ""       ""            3       0       0
      10 n                    "79"            "74"     "81"          3       1       1
      11 Mean (SD)            " 2.5 ( 5.80)"  " 1.5 (~ " 2.0 ~       3       1       2
      12 Median (Range)       " 2.0 (-11;16)" " 1.0 (~ " 2.0 ~       3       1       3
      # ... with abbreviated variable names 1: var1_xanomeline_high_dose,
      #   2: var1_xanomeline_low_dose, 3: ord_layer_index, 4: ord_layer_1,
      #   5: ord_layer_2

