/*
   Created by : Mohamed Hazem Mamdouh
   12-08-2023
   7:30 PM
 */
//***************  INSTRACTION MEMORY (ROM)  ***************//

module inst_mem (A, RD);

input   [31:0]  A;
output  [31:0] RD;




wire [31:0]  ROM [13:0] ;



assign RD = ROM[A>>2];
/*
initial
begin
$readmemh("m.txt",ROM);
end
*/

assign ROM[0]=32'h00500113;
assign ROM[1]=32'h00C00193;
assign ROM[2]=32'hFF718393;
assign ROM[3]=32'h00f00213;
assign ROM[4]=32'h0471aa23;

assign ROM[5]=32'h0541a103;
assign ROM[6]=32'h06402823;
assign ROM[7]=32'h06302923;

assign ROM[8]=32'h0c402423;

assign ROM[9]=32'h0541a103;
assign ROM[10]=32'h07002183;
assign ROM[11]=32'h07202283;
assign ROM[12]=32'h0c802403;
assign ROM[13]=32'h0c202423;



endmodule
