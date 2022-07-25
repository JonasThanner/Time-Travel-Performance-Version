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

def link(name, src_path, instance_path):
    source = os.path.join(src_path, name)
    destination = os.path.join(instance_path, name)

    if os.path.exists(destination):
        if os.path.isdir(destination):
            if os.path.islink(destination):
                os.unlink(destination)
            else:
                shutil.rmtree(destination)
        else:
            if os.path.islink(destination):
                os.unlink(destination)
            else:
                os.remove(destination)
    os.symlink(source, destination)

for name in os.listdir(src_path):
    if name == "scripts":
        scripts = os.path.join(src_path, name)
        scripts_instance_path = os.path.join(instance_path, "scripts")
        for script in os.listdir(scripts_instance_path):
            os.remove(os.path.join(scripts_instance_path, script))

        for script in os.listdir(scripts):
            source = os.path.join(scripts, script)
            destination = os.path.join(scripts_instance_path, script)
            os.link(source, destination)
    else:
        link(name, src_path, instance_path)
