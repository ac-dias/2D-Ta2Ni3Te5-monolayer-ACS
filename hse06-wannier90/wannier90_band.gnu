set style data dots
set nokey
set xrange [0: 2.04314]
set yrange [-16.55813 :  9.54598]
set arrow from  0.17646, -16.55813 to  0.17646,   9.54598 nohead
set arrow from  1.02157, -16.55813 to  1.02157,   9.54598 nohead
set arrow from  1.19803, -16.55813 to  1.19803,   9.54598 nohead
set xtics ("G"  0.00000,"X"  0.17646,"R"  1.02157,"Y"  1.19803,"G"  2.04314)
 plot "wannier90_band.dat"
