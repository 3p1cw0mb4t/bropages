#!/bin/sh
bro $@ | less -RF +Gg
