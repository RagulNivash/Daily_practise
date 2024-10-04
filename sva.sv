sequence rd_detect(ptr)

  ##[0:$](read_en && !empty && (aff1.rd_ptr==ptr));

endsequence


property data_check(wrptr);

  integer ptr,data;

  @(posedge wclk) disable iff(!wclk_reset_n || !rclk_reset_n)
  (write_en && !full, ptr=wrptr, data=fifo_in,$display()) |=> @(negedge rclk) first_match(rd-detect(ptr),$display()) ##0 (fifo_out===data);



endproperty





dcheck: assert property (data_check(aff1.wr_prt) else $display($stime,,,"FAIL:Data CHeck");
dcheck: cover property (data_check(aff1.wr_prt) $display($stime,,,"Pass:Data CHeck");
