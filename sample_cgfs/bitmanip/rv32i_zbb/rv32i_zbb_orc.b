orc.b:
    config: 
      - check ISA:=regex(.*RV32.*I.*B.*)
      - check ISA:=regex(.*RV32.*I.*Zbb.*)
    opcode: 
      orc.b: 0
    rs1: 
      <<: *all_regs
    rd: 
      <<: *all_regs
    op_comb: 
      <<: *ifmt_op_comb
    val_comb:
      abstract_comb:
        'walking_ones("rs1_val", xlen, False)': 0
        'walking_ones("rs1_val", 16909320, False)': 0
        'walking_ones("rs1_val", 33818625, False)': 0
        'walking_ones("rs1_val", 67633410, False)': 0
        'walking_ones("rs1_val", 134283780, False)': 0
        
