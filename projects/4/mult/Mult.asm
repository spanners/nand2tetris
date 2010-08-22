//  Russian Peasant Multiplication Algorithm

//  def peasant(R0, R1):
//    R2 = 0
//    bit = 0
//    i = 0
//    mask = 1
//    while i < 16:
//      bit = R1 & mask
//      if bit != 0:
//        result += R0
//      R0 += R0
//      mask += mask
//      i += 1
//    return R2

@R2
M=0
@bit
M=0
@i
M=0
@mask
M=1

(LOOP)
  @i
  D=M
  @16
  D=A-D
  @END
  D;JLE
  @R1
  D=M
  @bit
  M=D
  @mask
  D=M
  @bit
  M=M&D
  D=M
  @SKIP
  D;JEQ
  @R0
  D=M
  @R2
  M=M+D

(SKIP)
  @R0
  D=M
  M=M+D
  @mask
  D=M
  M=M+D
  @i
  M=M+1
  @LOOP
  0;JMP

(END)
  @END
  0;JMP
