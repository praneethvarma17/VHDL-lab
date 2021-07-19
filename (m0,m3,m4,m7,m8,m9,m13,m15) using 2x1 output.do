onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /func/a
add wave -noupdate /func/b
add wave -noupdate /func/c
add wave -noupdate /func/d
add wave -noupdate -color Red -radix binary -radixshowbase 0 /func/f
add wave -noupdate /func/g
add wave -noupdate /func/h
add wave -noupdate /func/i
add wave -noupdate /func/j
add wave -noupdate /func/k
add wave -noupdate /func/l
add wave -noupdate /func/m
add wave -noupdate /func/n
add wave -noupdate /func/o
add wave -noupdate /func/p
add wave -noupdate /func/z1/x
add wave -noupdate /func/z1/y
add wave -noupdate /func/z1/F
add wave -noupdate /func/z2/x
add wave -noupdate /func/z2/F
add wave -noupdate /func/z3/x
add wave -noupdate /func/z3/F
add wave -noupdate /func/z4/x
add wave -noupdate /func/z4/y
add wave -noupdate /func/z4/F
add wave -noupdate /func/z5/x
add wave -noupdate /func/z5/y
add wave -noupdate /func/z5/F
add wave -noupdate /func/z6/x
add wave -noupdate /func/z6/y
add wave -noupdate /func/z6/F
add wave -noupdate /func/z7/x
add wave -noupdate /func/z7/F
add wave -noupdate /func/z8/x
add wave -noupdate /func/z8/F
add wave -noupdate /func/z9/x
add wave -noupdate /func/z9/y
add wave -noupdate /func/z9/F
add wave -noupdate /func/z10/x
add wave -noupdate /func/z10/y
add wave -noupdate /func/z10/F
add wave -noupdate /func/z11/A
add wave -noupdate /func/z11/B
add wave -noupdate /func/z11/S
add wave -noupdate /func/z11/F
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
