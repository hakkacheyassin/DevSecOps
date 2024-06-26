package main

deny[msg] {
    input[i].Cmd == "from"
    not startswith(input[i].Value, "openjdk:8-jdk-alpine")
    msg = sprintf("Invalid base image: %s", [input[i].Value])
}