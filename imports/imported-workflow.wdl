task hello {
  String addressee
  command {
    echo "Hello ${addressee}!"
  }
  runtime {
      docker: "ubuntu:latest"
  }
  output {
    String salutation = read_string(stdout())
  }
}

workflow wf_hello {
  String wf_hello_input
  
  call hello {input: addressee = wf_hello_input }

  output {
    File result = hello.salutation
  }
}
