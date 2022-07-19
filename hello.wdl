version 1.0

task hello {
  input {
    String name
  }
  command {
    echo "Hello ~{name}"
  }
  output {
    File response = stdout()
  }
  runtime {
    docker: "tiagofilipe12/test-private"
  }
}


workflow test {

  call hello

}
