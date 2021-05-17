from pyswip import Prolog
import re
import os

prolog = Prolog()

# helper functions
def query_bool(q):
    return bool(list(prolog.query(q)))

def attacks(arg1, arg2):
    return query_bool("attack(%s, %s)"  % (arg1, arg2))

def acceptable(arg):
    return query_bool("acceptable(%s)"  % arg)

# define Argument Processing Unit
prolog.assertz("acceptable(X) :- not(defeat(X))")
prolog.assertz("defeat(X) :- attack(Y, X), acceptable(Y)")

# load contracts and laws
for filename in os.listdir("./contracts_and_laws"): 
    prolog.consult("./contracts_and_laws/" + filename)

# load arguments and build attack relations
attack_relations = ""
arguments = {}
for filename in os.listdir("./arguments"): 
    f = open("./arguments/"+filename, "r")
    lines = f.readlines()
    line_number = 0


    if "argument" not in lines[line_number]: continue

    argument_name = lines[line_number].replace("% argument ", "").strip()

    arguments[argument_name] = {}
    arguments[argument_name]["attacks"] = []
    arguments[argument_name]["source"] = "".join(lines)

    while(True):
        line_number += 1

        if("attacks" in lines[line_number]):
            attacked_argument_name = lines[line_number].replace("% attacks ", "").strip()

            arguments[argument_name]["attacks"].append(attacked_argument_name)

            attack_relations += "attack(%s, %s).\n" %(argument_name, attacked_argument_name)

            prolog.assertz("attack(%s, %s)\n" %(argument_name, attacked_argument_name))
        else:
            break
        
print("Attack relations:")
print(attack_relations)

accepted_rules = ""
for key, value in arguments.items():
    if acceptable(key):
        print("%s is acceptable " % key)
        page_break = '\n\n\n% '+ key +'-------------------------------------------------------------------------------\n\n\n'
        accepted_rules += page_break + value["source"] 

        prolog.consult("arguments/%s.pl" % key)

while(True):
    i = input(">> ").strip()

    if(i == "exit"): break

    print(query_bool(i))

arguments_file = open("generated_arguments.pl", "w")
arguments_file.write(attack_relations)

rules_file = open("generated_rules.pl", "w")
rules_file.write(accepted_rules)
