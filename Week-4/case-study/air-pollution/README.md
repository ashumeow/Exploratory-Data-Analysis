<b>Execution:</b>
```R
> source("~/exp-data/case-study/air-pollution/air-pollution.R")
[1] "# RD|Action Code|State Code|County Code|Site ID|Parameter|POC|Sample Duration|Unit|Method|Date|Start Time|Sample Value|Null Data Code|Sampling Frequency|Monitor Protocol (MP) ID|Qualifier - 1|Qualifier - 2|Qualifier - 3|Qualifier - 4|Qualifier - 5|Qualifier - 6|Qualifier - 7|Qualifier - 8|Qualifier - 9|Qualifier - 10|Alternate Method Detectable Limit|Uncertainty"
[[1]]
 [1] "# RD"                              "Action Code"                      
 [3] "State Code"                        "County Code"                      
 [5] "Site ID"                           "Parameter"                        
 [7] "POC"                               "Sample Duration"                  
 [9] "Unit"                              "Method"                           
[11] "Date"                              "Start Time"                       
[13] "Sample Value"                      "Null Data Code"                   
[15] "Sampling Frequency"                "Monitor Protocol (MP) ID"         
[17] "Qualifier - 1"                     "Qualifier - 2"                    
[19] "Qualifier - 3"                     "Qualifier - 4"                    
[21] "Qualifier - 5"                     "Qualifier - 6"                    
[23] "Qualifier - 7"                     "Qualifier - 8"                    
[25] "Qualifier - 9"                     "Qualifier - 10"                   
[27] "Alternate Method Detectable Limit" "Uncertainty"                      

 num [1:117421] NA NA NA 8.84 14.92 ...
 int [1:1304287] 20120101 20120104 20120107 20120110 20120113 20120116 20120119 20120122 20120125 20120128 ...
 Date[1:1304287], format: "2012-01-01" "2012-01-04" "2012-01-07" "2012-01-10" "2012-01-13" ...
 chr [1:33] "1.5" "1.12" "5.73" "5.80" "5.83" "5.110" "13.11" ...
 chr [1:18] "1.5" "1.12" "5.80" "5.133" "13.11" "29.5" "31.3" ...
 [1] "1.5"     "1.12"    "5.80"    "13.11"   "29.5"    "31.3"    "63.2008" "67.1015"
 [9] "85.55"   "101.3"  
 Date[1:30], format: "2012-01-01" "2012-01-04" "2012-01-07" "2012-01-10" "2012-01-13" ...
 num [1:53(1d)] 19.96 6.67 10.8 15.68 17.66 ...
 - attr(*, "dimnames")=List of 1
  ..$ : chr [1:53] "1" "2" "4" "5" ...
 num [1:52(1d)] 10.13 4.75 8.61 10.56 9.28 ...
 - attr(*, "dimnames")=List of 1
  ..$ : chr [1:52] "1" "2" "4" "5" ...
Warning messages:
1: In boxplot.default(log10(x0), log10(x1)) : NaNs produced
2: In bplt(at[i], wid = width[i], stats = z$stats[, i], out = z$out[z$group ==  :
  Outlier (-Inf) in boxplot 1 is not drawn
3: In bplt(at[i], wid = width[i], stats = z$stats[, i], out = z$out[z$group ==  :
  Outlier (-Inf) in boxplot 2 is not drawn

```