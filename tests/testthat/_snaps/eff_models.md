# efficacy models works

    Code
      efficacy_models(adas, "CHG", 24)
    Output
      # A tibble: 9 x 3
        row_label                            `var1_Xanomeline Low Dose` var1_Xanomel~1
        <chr>                                <chr>                      <chr>         
      1 "p-value(Dose Response) [1][2]"       <NA>                      "   0.245    "
      2 ""                                    <NA>                      ""            
      3 "p-value(Xan - Placebo) [1][3]"      "   0.569    "             "   0.233    "
      4 "  Diff of LS Means (SE)"            "-0.5 (0.82)"              "-1.0 (0.84)" 
      5 "  95% CI"                           "(-2.1;1.1)"               "(-2.7;0.7)"  
      6 ""                                   ""                         ""            
      7 "p-value(Xan High - Xan Low) [1][3]"  <NA>                      "   0.520    "
      8 "  Diff of LS Means (SE)"             <NA>                      "-0.5 (0.84)" 
      9 "  95% CI"                            <NA>                      "(-2.2;1.1)"  
      # ... with abbreviated variable name 1: `var1_Xanomeline High Dose`

