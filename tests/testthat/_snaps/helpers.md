# pad_row works

    Code
      pad_row(.data)
    Output
      # A tibble: 7 x 5
        STUDYID  USUBJID       PARAMCD PARAM                             AVISIT    
        <chr>    <chr>         <chr>   <chr>                             <chr>     
      1 "TEST01" "01-701-1015" "DIABP" "Diastolic Blood Pressure (mmHg)" "BASELINE"
      2 "TEST01" "01-701-1015" "DIABP" "Diastolic Blood Pressure (mmHg)" "WEEK 2"  
      3 "TEST01" "01-701-1015" "SYSBP" "Systolic Blood Pressure (mmHg)"  "BASELINE"
      4 "TEST01" "01-701-1015" "SYSBP" "Systolic Blood Pressure (mmHg)"  "WEEK 2"  
      5 "TEST01" "01-701-1028" "DIABP" "Diastolic Blood Pressure (mmHg)" "BASELINE"
      6 "TEST01" "01-701-1028" "SYSBP" "Systolic Blood Pressure (mmHg)"  "BASELINE"
      7 ""       ""            ""      ""                                ""        

# num_fmt works

    Code
      num_fmt(5, digits = 0, size = 10, int_len = 3)
    Output
      [1] "  5       "

# str_pad works

    Code
      str_pad("pilot3", 7, "left")
    Output
      [1] " pilot3"

# nrow works

    Code
      nrow(matrix(1:12, 3, 4))
    Output
      [1] 3

# round works

    Code
      round(c(0.3, 1.03, 2.67, 5, 8.91), digits = 1)
    Output
      [1] 0.3 1.0 2.7 5.0 8.9

# format works

    Code
      format("GFG", width = 8, justify = "l")
    Output
      [1] "GFG     "

