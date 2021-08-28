orc.b:
    config: 
      - check ISA:=regex(.*RV64.*I.*B.*)
      - check ISA:=regex(.*RV64.*I.*Zbb.*)
    opcode: 
      orc.b: 0
    rs1: 
      <<: *all_regs
    rd: 
      <<: *all_regs
    op_comb: 
      <<: *ifmt_op_comb
    val_comb:
      'rs1_val == 72624976414508040': 0
      'rs1_val == 145249888404506625': 0
      'rs1_val == 290483284134592770': 0
      'rs1_val == 576744443617542660': 0
      abstract_comb:
        'walking_ones("rs1_val", xlen, False)': 0
