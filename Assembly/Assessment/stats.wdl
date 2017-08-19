workflow stats {
  call run
}

task run {
  String assembly
  String outdir
  String stat_sh
  command {
    mkdir -p ${outdir}/1.stat
    ${stat_sh} ${assembly} > ${outdir}/1.stat/assembly.stats
  }
  output {
    File output_stats = "${outdir}/1.stat/assembly.stats"
  }
  runtime {
    memory: "1GB"
    cpu: "1"
  }
}
