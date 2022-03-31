import os
import glob
import re

sample_names, = glob_wildcards("000.fastq/{name}.fastq")

rule all:
    input:
        """
	fastq=expand("000.fastq/{name}.fastq", name=sample_names),

	"""

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
