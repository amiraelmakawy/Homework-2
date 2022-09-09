load("Household_Pulse_data.RData")
#glimpse(acs2017_ny) 
Household_Pulse_data[1:10,1:7]

attach(Household_Pulse_data)

#There is a correlaton between the "Recieved Vaccine" Variable and each of the education level , people who had covid before , 
people who have remote work , and people who lost and the other who didnt lose their jobs during the covid period.


table(EEDUC,RECVDVACC)

                        RECVDVACC
EEDUC             NA yes got vaxx no did not get vaxx
less than hs     6          290                 115
some hs         15          652                 269
HS diploma     113         6097                1647
some coll      178        12022                2396
assoc deg      110         6266                1132
bach deg       238        18272                1565
adv deg        191        16727                 813




table(GETVACRV , HADCOVID)  

                            HADCOVID
GETVACRV                      NA yes doctor told had covid no did not not sure
NA                        1093                      7032      52768      266
definitely will get vaxx     6                       195        402        6
probably will get vaxx      27                       237        457       10
unsure about vaxx           55                       443       1057       29
probably not                46                       436       1086       31
definitely not             136                       779       2451       66


# There is a large number of people who had covid reported "NA" result about getting the vaccine.

table(WRKLOSSRV , RECVDVACC)

                           RECVDVACC
WRKLOSSRV                   NA yes got vaxx no did not get vaxx
NA                       610          842                 509
yes recent HH job loss    41         6502                1515
no recent HH job loss    200        52982                5913



prop.table(table(works_remote,RECVDVACC))

                          RECVDVACC
works_remote                NA yes got vaxx no did not get vaxx
NA              0.0094626270 0.0865381833        0.0200682930
worked remotely 0.0007234424 0.3063923373        0.0236855051
no              0.0021269207 0.4799172382        0.0710854530
  

Only 30% of sample who work remotely received the vaccine , and 48% who don't work remotely received it.

The people who have "NA" result maybe are some people who are against the idea of the vaccine , or other who are hesitated to take it because
they fear about its side effects. 








  