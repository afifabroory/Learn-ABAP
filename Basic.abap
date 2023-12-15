*&---------------------------------------------------------------------*
*& Report ZAFIF002
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZAFIF002.

* Elementary type
DATA: gv_message TYPE STRING,
      str_results TYPE STRING,
      s1 TYPE STRING,
      s2 TYPE STRING,
      s3 TYPE STRING,
      raw_str TYPE STRING,
      gv_name TYPE C LENGTH 11.

* Complex type
* Structure type
TYPES: BEGIN OF company,
          name TYPE STRING,
          brand_name TYPE STRING,
          country_code TYPE C LENGTH 3,
       END OF company.

* Internal Table
TYPES company_tab TYPE STANDARD TABLE OF company.

CONSTANTS pi TYPE P DECIMALS 2 VALUE '3.14'.

DATA utpe TYPE company.
DATA gt_company TYPE company_tab.

****

WRITE 'Hello, World!'. " Statement
NEW-LINE NO-SCROLLING.

* Variable assignment
gv_message = 'Hello,'.
MOVE 'Muhammad Afif Abroory' TO gv_name.

raw_str = 'ABC-DEF-GHI'.

WRITE:/ gv_message, gv_name, '===='.
NEW-LINE NO-SCROLLING.

* Chain Statement
WRITE: 'Hello,',
       'World!'.
NEW-LINE NO-SCROLLING.

* Structure Assignment
utpe-name = 'PT ABC DEF GHI'.
utpe-brand_name = 'PATRAA'.
utpe-country_code = 'IDN'.

WRITE utpe-name.
NEW-LINE NO-SCROLLING.

* ABAP System Variable
WRITE:/ 'Client:', sy-mandt,
      / 'User:', sy-uname,
      / 'Date:', sy-datum,
      / 'Time:', sy-uzeit.

* Arithmatic Operations (Just like other lang)
* Clear variable
CLEAR: gv_message, gv_name.
WRITE:/ gv_message, gv_name, '===='.

* Control statement
* Loops
DO 4 TIMES.
  WRITE:/ 'Loop-' && sy-index.
ENDDO.

WHILE sy-index <= 4.

* Continue statement
  IF sy-index = 3.
    CONTINUE.
  ELSEIF sy-index = 4.
    EXIT.
  ENDIF.

  WRITE:/ 'Loop-' && sy-index.
ENDWHILE.

* String operations
CONCATENATE utpe-name utpe-brand_name INTO str_results SEPARATED BY ' ! '.
SPLIT raw_str AT '-' INTO s1 s2 s3.

WRITE / str_results.
WRITE: / s1, s2, s3.

SEARCH raw_str FOR 'ABC'.
IF sy-subrc = 0.
  WRITE / 'String Found'.
ELSE.
  WRITE / 'String Found'.
ENDIF.

REPLACE 'ABC' WITH 'GHI' INTO raw_str.
WRITE / raw_str.

* Internal Tables
* An internal table consists of lines that have the same data type. The line of an internal table is a structure.