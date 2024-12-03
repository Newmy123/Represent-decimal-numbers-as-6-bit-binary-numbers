module lab2_part6(
	input [5:0] SW,
	output [0:6] HEX0, HEX1
);
	wire [5:0] binary = SW[5:0];
	wire [3:0] ten, units;
	wire [3:0] bcd;
	
	//convert binary to decimal
	assign ten = binary / 10;
	assign units = binary % 10;
	
	
	// HEX0 display logic
    assign HEX0[0] = (~units[3] & ~units[2] & ~units[1] & units[0]) | //1
		     (~units[3] & units[2] & units[1] & units[0]) | //7
		     (~units[3] & ~units[2] & ~units[1] & ~units[0]); //0
	

    assign HEX0[1] = 
                     (~units[3] & ~units[2] & ~units[1] & units[0]) | //1
		     (~units[3] & ~units[2] & units[1] & ~units[0]) | //2
		     (~units[3] & units[2] & units[1] & units[0]) | //7
		     (~units[3] & ~units[2] & units[1] & units[0]); //3
	
	

    assign HEX0[2] = (~units[3] & ~units[2] & ~units[1] & units[0]) | //1
		     (~units[3] & units[2] & ~units[1] & units[0]) | //5
		     (~units[3] & units[2] & ~units[1] & ~units[0]) | //4
		     (~units[3] & units[2] & units[1] & units[0]) | //7
		     (units[3] & ~units[2] & ~units[1] & units[0]) | //9
		     (~units[3] & ~units[2] & units[1] & units[0]); //3


    assign HEX0[3] = (~units[3] & ~units[2] & ~units[1] & units[0]) | //1
		     (~units[3] & units[2] & ~units[1] & ~units[0]) | //4
		     (~units[3] & units[2] & units[1] & units[0]); //7


    assign HEX0[4] =  (~units[3] & ~units[2] & units[1] & ~units[0]); //2
	
		     
    assign HEX0[5] = (~units[3] & units[2] & units[1] & ~units[0]) | //6
		     (~units[3] & units[2] & ~units[1] & units[0]); //5


    assign HEX0[6] = (~units[3] & ~units[2] & ~units[1] & units[0]) | //1
		     (~units[3] & units[2] & ~units[1] & ~units[0]); //4
			  
	// HEX1 display logic
	assign HEX1[0] = (~ten[3] & ~ten[2] & ~ten[1] & ten[0]) | //1
		     (~ten[3] & ten[2] & ten[1] & ten[0]) | //7
		     (~ten[3] & ~ten[2] & ~ten[1] & ~ten[0]); //0
	

    assign HEX1[1] = 
                     (~ten[3] & ~ten[2] & ~ten[1] & ten[0]) | //1
		     (~ten[3] & ~ten[2] & ten[1] & ~ten[0]) | //2
		     (~ten[3] & ten[2] & ten[1] & ten[0]) | //7
		     (~ten[3] & ~ten[2] & ten[1] & ten[0]); //3
	
	

    assign HEX1[2] = (~ten[3] & ~ten[2] & ~ten[1] & ten[0]) | //1
		     (~ten[3] & ten[2] & ~ten[1] & ten[0]) | //5
		     (~ten[3] & ten[2] & ~ten[1] & ~ten[0]) | //4
		     (~ten[3] & ten[2] & ten[1] & ten[0]) | //7
		     (ten[3] & ~ten[2] & ~ten[1] & ten[0]) | //9
		     (~ten[3] & ~ten[2] & ten[1] & ten[0]); //3


    assign HEX1[3] = (~ten[3] & ~ten[2] & ~ten[1] & ten[0]) | //1
		     (~ten[3] & ten[2] & ~ten[1] & ~ten[0]) | //4
		     (~ten[3] & ten[2] & ten[1] & ten[0]); //7


    assign HEX1[4] =  (~ten[3] & ~ten[2] & ten[1] & ~ten[0]); //2
	
		     
    assign HEX1[5] = (~ten[3] & ten[2] & ten[1] & ~ten[0]) | //6
		     (~ten[3] & ten[2] & ~ten[1] & ten[0]); //5


    assign HEX1[6] = (~ten[3] & ~ten[2] & ~ten[1] & ten[0]) | //1
		     (~ten[3] & ten[2] & ~ten[1] & ~ten[0]); //4
endmodule 
	