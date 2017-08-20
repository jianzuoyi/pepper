workflow stats {
  call run
}

task run {
  String assembly
  String outdir
  String stat_sh
  String asm_name = basename(assembly)
  command {
    mkdir -p ${outdir}/1.stat
    ${stat_sh} ${assembly} > ${outdir}/1.stat/${asm_name}.stats
  }
  output {
    File output_stats = "${outdir}/1.stat/${asm_name}.stats"
  }
  runtime {
    memory: "1 GB"
    cpu: "1"
    jobname: "run_stats"
  }
}
