module tb;
initial begin
	$display("[%0t] main thread: Fork join is about to start", $time);
	fork
	#40 $display("[%0t]thread1finished",$time);
	begin
	
		#2 $display("[%0t]thread2",$time);
		#20 $display("[%0t]Thread2 finished",$time);
	
	end
	
	#30 $display("[%0t]Thread 3",$time);
	join
	$display("[%0t]thread1finished",$time);
	
end
endmodule
