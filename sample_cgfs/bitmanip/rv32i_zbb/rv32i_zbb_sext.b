sext.b:
    config: 
      - check ISA:=regex(.*RV32.*I.*B.*)
      - check ISA:=regex(.*RV32.*I.*Zbb.*)
    opcode: 
      sext.b: 0
    rs1: 
      <<: *all_regs
    rd:
      <<: *all_regs
    op_comb: 
      <<: *ifmt_op_comb
    val_comb:
      'rs1_val == 0': 0
      'rs1_val == 32768': 0
      abstract_comb:      
        'walking_ones("rs1_val", xlen, False)': 0

