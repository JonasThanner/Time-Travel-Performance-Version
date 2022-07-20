#!/usr/bin/env python3

import argparse
import shutil
import os

#checks if the string is a valid path
def dir_path(string):
    if os.path.isdir(string):
        return string
    else:
        raise argparse.ArgumentTypeError(f"'{string}' is not a valid path")

#argument parsing
argparser = argparse.ArgumentParser()
argparser.add_argument("dir", type=dir_path, help="the directory of your minecraft instance to be overwritten")
args = argparser.parse_args()

#path resolving
instance_path = os.path.abspath(os.path.expanduser(os.path.expandvars(args.dir)))
src_path = os.path.abspath(os.path.expanduser(os.path.expandvars(os.path.dirname(__file__)))) + "/src/"

for name in os.listdir(src_path):
    source = os.path.join(src_path, name)
    destination = os.path.join(instance_path, name)

    if os.path.exists(destination):
        if os.path.isdir(destination):
            shutil.rmtree(destination)
        else:
            os.remove(destination)
    os.symlink(source, destination)