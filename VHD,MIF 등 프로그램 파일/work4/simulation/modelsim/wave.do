view wave 
wave clipboard store
wave modify -driver freeze -pattern clock -initialvalue 1 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/data_processor1/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/data_processor1/reset_n 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 50ns Edit:/data_processor1/reset_n 
wave modify -driver freeze -pattern constant -value 0011 -range 3 0 -starttime 0ns -endtime 200ns Edit:/data_processor1/input 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 200ns -endtime 400ns Edit:/data_processor1/input 
wave modify -driver freeze -pattern constant -value 0011 -range 3 0 -starttime 400ns -endtime 600ns Edit:/data_processor1/input 
wave modify -driver freeze -pattern constant -value 0100 -range 3 0 -starttime 400ns -endtime 600ns Edit:/data_processor1/input 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/data_processor1/ac_load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/data_processor1/mar_load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/data_processor1/ram_load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/data_processor1/input_sel 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/data_processor1/alu_sel 
wave modify -driver freeze -pattern constant -value 001 -range 2 0 -starttime 0ns -endtime 1000ns Edit:/data_processor1/mar_in 
wave edit change_value -start 84ns -end 117ns -value 1 Edit:/data_processor1/ac_load 
wave edit change_value -start 83ns -end 116ns -value 1 Edit:/data_processor1/mar_load 
wave edit change_value -start 79ns -end 121ns -value 1 Edit:/data_processor1/ram_load 
wave edit change_value -start 153ns -end 235ns -value 0010 Edit:/data_processor1/input 
wave edit change_value -start 190ns -end 216ns -value 1 Edit:/data_processor1/ac_load 
wave edit change_value -start 187ns -end 222ns -value 1 Edit:/data_processor1/mar_load 
wave edit change_value -start 231ns -end 301ns -value 1 Edit:/data_processor1/ram_load 
wave edit change_value -start 176ns -end 278ns -value 1 Edit:/data_processor1/ram_load 
wave edit change_value -start 250ns -end 336ns -value 0 Edit:/data_processor1/ram_load 
wave edit change_value -start 163ns -end 190ns -value 0 Edit:/data_processor1/ram_load 
wave edit change_value -start 180ns -end 546ns -value 000 Edit:/data_processor1/mar_in 
wave edit change_value -start 75ns -end 125ns -value 1 Edit:/data_processor1/input_sel 
wave edit change_value -start 183ns -end 241ns -value 1 Edit:/data_processor1/input_sel 
wave edit change_value -start 347ns -end 413ns -value 0100 Edit:/data_processor1/input 
wave edit change_value -start 379ns -end 437ns -value 1 Edit:/data_processor1/input_sel 
wave edit change_value -start 376ns -end 439ns -value 1 Edit:/data_processor1/ac_load 
wave edit change_value -start 375ns -end 440ns -value 1 Edit:/data_processor1/mar_load 
wave edit change_value -start 379ns -end 582ns -value 010 Edit:/data_processor1/alu_sel 
wave edit change_value -start 447ns -end 558ns -value 001 Edit:/data_processor1/mar_in 
wave edit change_value -start 438ns -end 529ns -value 000 Edit:/data_processor1/mar_in 
wave edit change_value -start 480ns -end 554ns -value 000 Edit:/data_processor1/mar_in 
wave edit change_value -start 478ns -end 583ns -value 001 Edit:/data_processor1/mar_in 
wave edit change_value -start 482ns -end 533ns -value 1 Edit:/data_processor1/ac_load 
wave edit change_value -start 482ns -end 532ns -value 1 Edit:/data_processor1/mar_load 
wave edit change_value -start 461ns -end 617ns -value 000 Edit:/data_processor1/alu_sel 
wave edit change_value -start 572ns -end 682ns -value 010 Edit:/data_processor1/alu_sel 
wave edit change_value -start 456ns -end 587ns -value 010 Edit:/data_processor1/alu_sel 
wave edit change_value -start 450ns -end 571ns -value 000 Edit:/data_processor1/mar_in 
wave edit change_value -start 473ns -end 561ns -value 000 Edit:/data_processor1/alu_sel 
wave edit change_value -start 572ns -end 627ns -value 1 Edit:/data_processor1/ac_load 
wave edit change_value -start 572ns -end 637ns -value 1 Edit:/data_processor1/mar_load 
wave edit change_value -start 464ns -end 567ns -value 010 Edit:/data_processor1/alu_sel 
wave edit change_value -start 487ns -end 579ns -value 001 Edit:/data_processor1/mar_in 
wave edit change_value -start 368ns -end 405ns -value 000 Edit:/data_processor1/alu_sel 
WaveCollapseAll -1
wave clipboard restore
