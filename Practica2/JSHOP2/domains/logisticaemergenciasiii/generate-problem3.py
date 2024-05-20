#!/usr/bin/env python3

########################################################################################
# Problem instance generator skeleton for emergencies drones domain.
# Based on the Linköping University TDDD48 2021 course.
# https://www.ida.liu.se/~TDDD48/labs/2021/lab1/index.en.shtml
#
# You mainly have to change the parts marked as TODO.
#
########################################################################################


import argparse
import random
import math
import sys

########################################################################################
# Hard-coded options
########################################################################################

# Crates will have different contents, such as food and medicine.
# You can change this to generate other contents if you want.

content_types = ["comida", "medicina"]


########################################################################################
# Random seed
########################################################################################

# Set seed to 0 if you want more predictability...
# random.seed(0);

########################################################################################
# Helper functions
########################################################################################

# We associate each location with x/y coordinates.  These coordinates
# won't actually be used explicitly in the domain, but we *will*
# eventually use them implicitly by using *distances* in order to
# calculate flight times.
#
# This function returns the euclidean distance between two locations.
# The locations are given via their integer index.  You won't have to
# use this other than indirectly through the flight cost function.
def distance(location_coords, location_num1, location_num2):
    x1 = location_coords[location_num1][0]
    y1 = location_coords[location_num1][1]
    x2 = location_coords[location_num2][0]
    y2 = location_coords[location_num2][1]
    return math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)


# This function returns the action cost of flying between two
# locations supplied by their integer indexes.  You can use this
# function when you extend the problem generator to generate action
# costs.
def flight_cost(location_coords, location_num1, location_num2):
    return int(distance(location_coords, location_num1, location_num2)) + 1


# When you run this script you specify the *total* number of crates
# you want.  The function below determines randomly which crates
# will have a specific type of contents.  crates_with_contents[0]
# is a list of crates containing content_types[0] (in our
# example "food"), and so on.
# Note: Will have at least one crate per type!

def setup_content_types(options):
    while True:
        num_crates_with_contents = []
        crates_left = options.crates
        for x in range(len(content_types) - 1):
            types_after_this = len(content_types) - x - 1
            max_now = crates_left - types_after_this
            # print x, types_after_this, crates_left, len(content_types), max_now
            num = random.randint(1, max_now)
            # print num
            num_crates_with_contents.append(num)
            crates_left -= num
        num_crates_with_contents.append(crates_left)
        # print(num_crates_with_contents)

        # If we have 10 medicine and 4 food, with 7 people,
        # we can support at most 7+4=11 goals.
        maxgoals = sum(min(num_crates, options.persons) for num_crates in num_crates_with_contents)

        # Check if the randomization supports the number of goals we want to generate.
        # Otherwise, try to randomize again.
        if options.goals <= maxgoals:
            # Done
            break

    print()
    print("Types\tQuantities")
    for x in range(len(num_crates_with_contents)):
        if num_crates_with_contents[x] > 0:
            print(content_types[x] + "\t " + str(num_crates_with_contents[x]))

    crates_with_contents = []
    counter = 1
    for x in range(len(content_types)):
        crates = []
        for y in range(num_crates_with_contents[x]):
            crates.append("crate" + str(counter))
            counter += 1
        crates_with_contents.append(crates)

    return crates_with_contents


# This function populates the location_coords list with an X and Y
# coordinate for each location.  You won't have to use this other than
# indirectly through the flight cost function.
def setup_location_coords(options):
    location_coords = [(0, 0)]  # For the depot
    for x in range(1, options.locations + 1):
        location_coords.append((random.randint(1, 200), random.randint(1, 200)))

    print("Location positions", location_coords)
    return location_coords


# This function generates a random set of goals.
# After you run this, need[personid][contentid] is true if and only if
# the goal is for the person to have a crate with the specified content.
# You will use this to create goal statements in PDDL.
def setup_person_needs(options, crates_with_contents):
    need = [[False for i in range(len(content_types))] for j in range(options.persons)]
    goals_per_contents = [0 for i in range(len(content_types))]

    for goalnum in range(options.goals):

        generated = False
        while not generated:
            rand_person = random.randint(0, options.persons - 1)
            rand_content = random.randint(0, len(content_types) - 1)
            # If we have enough crates with that content
            # and the person doesn't already need that content
            if (goals_per_contents[rand_content] < len(crates_with_contents[rand_content])
                    and not need[rand_person][rand_content]):
                need[rand_person][rand_content] = True
                goals_per_contents[rand_content] += 1
                generated = True
    return need


########################################################################################
# Main program
########################################################################################

def main():
    parser = argparse.ArgumentParser(usage='python generator.py [-h] options...')
    parser.add_argument('-d', '--drones', metavar='NUM', dest='drones', action='store', type=int, help='the number of drones')
    parser.add_argument('-r', '--carriers', metavar='NUM', type=int, dest='carriers',
                      help='the number of carriers, for later labs; use 0 for no carriers')
    parser.add_argument('-l', '--locations', metavar='NUM', type=int, dest='locations',
                      help='the number of locations apart from the depot ')
    parser.add_argument('-p', '--persons', metavar='NUM', type=int, dest='persons', help='the number of persons')
    #  parser.add_argument('-c', '--crates', metavar='NUM', type=int, dest='crates', help='the number of crates available')
    #parser.add_argument('-g', '--goals', metavar='NUM', type=int, dest='goals', help='the number of crates assigned in the goal')
    parser.add_argument('--cap', metavar='NUM', type=str, dest='cap', help='the number of capacidades separated by commas')
    parser.add_argument('--cloc', metavar='NUM', type=str, dest='cloc', help='the number of capacidades separated by commas')
    args = parser.parse_args()

    

    if args.cap is None:
        print("Especifique las capacidades de los transportadores por favor, opcion --cap")
        sys.exit(1)
    cap_list = args.cap.split(',')

    if args.cloc is None:
        print("Especifique los lugares que necesiten cajas por favor, opcion --cloc")
        sys.exit(1)
    loc_list = args.cloc.split(',')

    
    if args.drones is None:
        print("You must specify --drones (use --help for help)")
        sys.exit(1)

    if args.carriers is None:
        print("You must specify --carriers (use --help for help)")
        sys.exit(1)

    if args.locations is None:
        print("You must specify --locations (use --help for help)")
        sys.exit(1)

    if args.persons is None:
        print("You must specify --persons (use --help for help)")
        sys.exit(1)


    content_types = ["comida", "medicina"]


    if (args.carriers != len(cap_list)):
        print("numero distinto de capacidades y transportadores")
        sys.exit(1)

    if (args.locations != len(loc_list)):
        print("numero distinto de sitios y locs que necesiten contenido")
        sys.exit(1)

    print("Drones\t\t", args.drones)
    print("Carriers\t", args.carriers)
    print("Locations\t", args.locations)
    print("Persons\t\t", args.persons)

    dron = []
    persona = []
    caja = []
    carrier = []
    loc = []
    

  
    y=65
    loc.append("deposito")
    for x in range(args.locations):
        loc.append("Loc"+str(x+1))  
    for x in range(args.drones):
        dron.append("dron" + str(x + 1))
    for x in range(args.carriers):
        carrier.append("t" + str(x + 1))
    for x in range(args.persons):
        persona.append("persona" + str(x + 0))
    
    # Define a problem name
    problem_name = "problem"+str(args.carriers)+"tr"+str(args.locations)+"locs"

    # Open output file
    with open(problem_name, 'w') as f:
        # Write the initial part of the problem
        f.write("(defproblem problem logisticaemergenciasiii \n")
        f.write("\t(;Initial state\n")

        # Write objects
        for x in dron:
            f.write("\t\t(DRON " + x + ")\n")

        for x in loc:
            f.write("\t\t(LOC " + x + ")\n")
        
        for x in content_types:
            f.write("\t\t(CONTENIDO " + x + ")\n")
        
        f.write("\t\t(BRAZO brazo1)\n")

        for x in dron:
            f.write(f"\t\t(loc-dron {x} deposito)\n")
        k=0
        for x in carrier:
            if(cap_list[k]!=None):
                f.write("\n\t\t(Transportador " + x + ")\n")
                f.write("\t\t(loc-transportador "+ x + " deposito)\n")
                f.write("\t\t(capacidad-max-transportador " + x + " " + cap_list[k] + ")\n")
                f.write("\t\t(capacidad-actual-transportador " + x + " 0)\n")
                for y in content_types:
                    f.write("\t\t(contenido-transportador " + x + " " + y + " 0)\n")
            else:
                f.write("\t\t(Transportador " + x + ")\n")
                f.write("\t\t(capacidad-max-transportador " + x + " " + str(random.randint(5,10)) + ")\n")
                f.write("\t\t(capacidad-actual-transportador " + x + " 0)\n")
                for y in content_types:
                    f.write("\t\t(contenido-transportador " + x + " " + y + " 0)\n")
            k+=1
        f.write("\n")

        lista = []
        totalcomida = 0
        totalmedicina = 0

        for i in range(len(loc)+1):
            lista.append(0)
        
        l = 1
        for x in loc_list:
            cajasporintento = int(x)
            cajascomida = random.randint(1,cajasporintento)
            cajasmedicina = cajasporintento-cajascomida
            totalcomida+= cajascomida
            totalmedicina+= cajasmedicina    
            f.write("\t\t(loc-necesita-contenido Loc" + str(l) + " comida " + str(cajascomida) + ")\n") 
            f.write("\t\t(loc-necesita-contenido Loc" + str(l) + " medicina " + str(cajasmedicina) + ")\n")   
            f.write("\t\t(loc-necesita Loc" + str(l) + " " + str(x)+ ")\n") 
            l+=1
        
        f.write(f"\t\t(cantidad-cajas comida {totalcomida+10})\n")
        f.write(f"\t\t(cantidad-cajas medicina {totalmedicina+10})\n")
        f.write("\t\t(brazo-dron-free dron1 brazo1)\n")
        f.write("\t\t(loc-cajas deposito)\n")
        f.write("\t\t(coste-viaje 0)\n")

        f.write("\t)\n")

        # Write Goals
        f.write("\t(;Task to solve\n")
        f.write("\t\t(enviar-todo)")
        f.write("\n\t)")
        f.write("\n)")

if __name__ == '__main__':
    main()