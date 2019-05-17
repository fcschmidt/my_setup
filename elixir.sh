#!/usr/bin/env bash
# Instal Elixir
# Ubuntu 14.04/16.04/17.04/18.04 or Debian 7/8/9
# Add Erlang Solutions repo:
wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && sudo dpkg -i erlang-solutions_1.0_all.deb
# Run:
apt-get update
# Install the Erlang/OTP platform and all of its applications:
apt-get install esl-erlang
# Install Elixir:
apt-get install elixir
# View Elixir Version
elixir -v
