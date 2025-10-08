%let pgm=utl-monarch-and-altair-personal-slc-reading-and-writing-google-sheets;

%stop_submission;

Monarch and altair personal slc reading and writing google sheets

Too long to post to a listserve, see github

github
https://github.com/rogerjdeangelis/utl-monarch-and-altair-personal-slc-reading-and-writing-google-sheets

community.altair
https://community.altair.com/discussion/6385/reading-writing-excel-and-other-files-directly-from-google-drive?tab=all&utm_source=community-search&utm_medium=organic-search&utm_term=monarch%20excel

Note: It is very easy to convert an excel sheet to an R dataframe and then create a google sheet;
df <- read_excel("path/to/your/excelfile.xlsx")


PROCESS (I assume you have access to google sheets)

    1 set up a googlesheets api and Oath

      EDIT code below

      Replace  abcdefghij with your Oath
      Replace  abcd with your API
      myapp is arbitrary

      client = gargle::gargle_oauth_client(
        id = "abcd",
        secret = "abcdefghij",
        name = "myapp"
      )


    2 Create google sheet. sheet_new using R builtin irsis dataframe
      Note gs4_create will automatically overwrite a google sheet if it exists


    3 create dataframe, df, from google sheet 'sheet_new
      and use sql to subset for species=setosa

    4 create wpd dataset from the subsetted sheet

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

api key
Oauth client

Builtin R iris data

/*
 _ __  _ __ ___   ___ ___  ___ ___
| `_ \| `__/ _ \ / __/ _ \/ __/ __|
| |_) | | | (_) | (_|  __/\__ \__ \
| .__/|_|  \___/ \___\___||___/___/
|_|
*/

%utlfkil(%sysfunc(pathname(WPSWBHTM)));
&_init_;
proc r;
submit;
library(sqldf)
library(googlesheets4)
gs4_auth()

# If using a custom OAuth client (replace 'abcdefghij' according to your credentials):
gs4_auth_configure(
  client = gargle::gargle_oauth_client(
    id = "abcd",
    secret = "abcdefghij",
    name = "myapp"
  )
)
gs4_auth()

data(iris)
head(iris)

# Write the data frame to a new sheet (this creates the sheet)
sheet_new <- gs4_create("Example Sheet from R", sheets = list("Sheet1" = iris))

df <- read_sheet(sheet_new)
head(df)

setosa<-sqldf('
    select
       *
    from
       df
    where
      species="setosa"
    ')
head(setosa)
endsubmit;
import data=rsetosa r=setosa;
run;quit;

proc print data=rsetosa;
run;quit;

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

Iris subste

Obs    SEPAL_LENGTH    SEPAL_WIDTH    PETAL_LENGTH    PETAL_WIDTH    SPECIES

  1         5.1            3.5             1.4             .2        setosa
  2         4.9            3.0             1.4             .2        setosa
  3         4.7            3.2             1.3             .2        setosa
  4         4.6            3.1             1.5             .2        setosa
  5         5.0            3.6             1.4             .2        setosa
  6         5.4            3.9             1.7             .4        setosa
  7         4.6            3.4             1.4             .3        setosa
  8         5.0            3.4             1.5             .2        setosa
....

/*
| | ___   __ _
| |/ _ \ / _` |
| | (_) | (_| |
|_|\___/ \__, |
         |___/
*/

09       ODS _ALL_ CLOSE;
910       FILENAME WPSWBHTM TEMP;
NOTE: Writing HTML(WBHTML) BODY file d:\wpswrk\_TD19596\#LN00049
911       ODS HTML(ID=WBHTML) BODY=WPSWBHTM GPATH="d:\wpswrk\_TD19596";
912       %utlfkil(%sysfunc(pathname(WPSWBHTM)));
913       &_init_;
914       proc r;
915       submit;
916       library(sqldf)
917       library(googlesheets4)
918       gs4_auth()
919
921       gs4_auth_configure(
922         client = gargle::gargle_oauth_client(
923           id = "abcd",
924           secret = "abcdefghij",
925           name = "myapp"
926         )
927       )
928       gs4_auth()
929
930       data(iris)
931       head(iris)
932
933       # Write the data frame to a new sheet (this creates the sheet)
934       sheet_new <- gs4_create("Example Sheet from R", sheets = list("Sheet1" = iris))
935
936       df <- read_sheet(sheet_new)
937       head(df)
938
939       setosa<-sqldf('
940           select
941              *
942           from
943              df
944           where
945             species="setosa"
946           ')
947       head(setosa)
948       endsubmit;
NOTE: Using R version 4.5.1 (2025-06-13 ucrt) from d:\r451

NOTE: Submitting statements to R:

Loading required package: gsubfn
Loading required package: proto
Loading required package: RSQLite
> library(sqldf)
> library(googlesheets4)
[33m![39m Using an auto-discovered, cached token.
  To suppress this message, modify your code or options to clearly consent to the use of a cached token.
  See gargle's "Non-interactive auth" vignette for more details:
  [3m[34m<https://gargle.r-lib.org/articles/non-interactive-auth.html>[39m[23m
[36mi[39m The [34mgooglesheets4[39m package is using a cached token for [34mrogerjdeangelis@gmail.com[39m.
> gs4_auth()
>
> # If using a custom OAuth client (replace 'sas2828rlx' according to your credentials):
> gs4_auth_configure(
+   client = gargle::gargle_oauth_client(
+     id = "xlr8",
+     secret = "sas2828rlx",
+     name = "myapp"
+   )
+ )
[1m[33mError[39m in `gs4_auth()`:[22m
[1m[22m[33m![39m Can't get Google credentials.
[36mi[39m Are you running [34mgooglesheets4[39m in a non-interactive session? Consider:
[36m*[39m Call `gs4_deauth()` to prevent the attempt to get credentials.
[36m*[39m Call `gs4_auth()` directly with all necessary specifics.
[36mi[39m See gargle's "Non-interactive auth" vignette for more details:
[36mi[39m [3m[34m<https://gargle.r-lib.org/articles/non-interactive-auth.html>[39m[23m
Backtrace:
[90m    [39mx
[90m 1. [39m\-[1m[94mgooglesheets4::gs4_auth([39m[22m[1m[94m)[39m[22m
[90m 2. [39m  \-googlesheets4:::gs4_abort(...)
[90m 3. [39m    \-[1mcli[22m::cli_abort(...)
[90m 4. [39m      \-[1mrlang[22m::abort(...)
> gs4_auth()
>
> data(iris)
> head(iris)
>
> # Write the data frame to a new sheet (this creates the sheet)
[32mv[39m Creating new Sheet: [36mExample Sheet from R[39m.
Auto-refreshing stale OAuth token.
> sheet_new <- gs4_create("Example Sheet from R", sheets = list("Sheet1" = iris))
>
[32mv[39m Reading from [36mExample Sheet from R[39m.
[32mv[39m Range [33mSheet1[39m.
> df <- read_sheet(sheet_new)
> head(df)
>
> setosa<-sqldf('
+     select
+        *
+     from
+        df
+     where
+       species="setosa"
+     ')

NOTE: Processing of R statements complete

> head(setosa)
949       import data=rsetosa r=setosa;
NOTE: Creating data set 'WORK.rsetosa' from R data frame 'setosa'
NOTE: Column names modified during import of 'setosa'
NOTE: Data set "WORK.rsetosa" has 50 observation(s) and 5 variable(s)

950       run;quit;
NOTE: Procedure r step took :
      real time : 6.252
      cpu time  : 0.000


951
952       proc print data=rsetosa;
953       run;quit;
NOTE: 50 observations were read from "WORK.rsetosa"
NOTE: Procedure print step took :
      real time : 0.013
      cpu time  : 0.000


954
955       quit; run;
956       ODS _ALL_ CLOSE;
957       FILENAME WPSWBHTM CLEAR;

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
