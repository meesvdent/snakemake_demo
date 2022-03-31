rule run_fastqc:
      input:
          fq="000.fastq/{name}.fastq"
      output:
          zip="{name}.fastqc.zip",
          html="{name}.fastqc.html"
      shell:
          """
          echo "Input: {input.fq}"
          """
