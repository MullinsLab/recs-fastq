# FastQ input and output commands for recs

## fromfastq

    usage: recs-fromfastq [-h] [-Q] [--fk FIELD] [input.fastq [input.fastq ...]]

    Each sequence in the FastQ input files (or stdin) produces an
    output record with the keys name, sequence, and quality.

    This command is part of the App::RecordStream (recs) system.
    See https://recs.pl for more information.

    positional arguments:
      input.fastq           FastQ input files (default: None)

    optional arguments:
      -h, --help            show this help message and exit
      -Q, --decode-quality  Decode Phred+33 quality string into integer scores
                            (default: False)
      --fk FIELD, --filename-key FIELD
                            Add a key FIELD set to the source filename (if no
                            filename is applicable will put NONE) (default: None)

## tofastq

    usage: recs-tofastq [-h] [-Q] [file [file ...]]

    Outputs a FastQ sequence for each record using the fields name,
    sequence, and quality.  These match the fields produced by
    fromfastq.

    This command is part of the App::RecordStream (recs) system.
    See https://recs.pl for more information.

    positional arguments:
      file                  record stream input files (default: None)

    optional arguments:
      -h, --help            show this help message and exit
      -Q, --encode-quality  Encode a Phred+33 quality string from integer scores
                            in the quality field (default: False)

# What's recs?

["A set of programs for creating, manipulating, and outputing a stream of Records, or JSON hashes."](https://metacpan.org/pod/App::RecordStream)

# Installation

recs-fastq requires Python 2.7 and BioPython.  You can install BioPython by
running `pip install biopython`.

Install fromfastq and tofastq into `/usr/local/bin` with:

    make install

or `$HOME/bin` with:

    make install prefix=$HOME

Uninstall using:

    make uninstall
