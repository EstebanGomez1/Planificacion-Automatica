import argparse

n=3
i=0
def generador_problema(num_persona, r, num_localizacion, num_caja, num_contenido, dron, num_brazo):

    # Configurar el análisis de argumentos de línea de comandos
    parser = argparse.ArgumentParser(description='Generador de problemas de planificación')
    parser.add_argument('-d', '--drones', type=int, help='Número de drones')
    parser.add_argument('-r', '--param_r', type=int, help='Parámetro R')
    parser.add_argument('-l', '--locations', type=int, help='Número de localizaciones')
    parser.add_argument('-p', '--people', type=int, help='Número de personas')
    parser.add_argument('-c', '--boxes', type=int, help='Número de cajas')
    parser.add_argument('-g', '--goals', type=int, help='Número de metas')

    # Analizar los argumentos de la línea de comandos
    args = parser.parse_args()

    # Verificar que se han proporcionado todos los argumentos necesarios
    if not all(vars(args).values()):
        parser.error("Se deben proporcionar todos los argumentos: -d, -r, -l, -p, -c, -g")

    # Llamar a la función para generar el problema con los parámetros proporcionados
    generate_problem(args.drones, args.param_r, args.locations, args.people, args.boxes, args.goals)

    problemaBasico= f"""
    (define (problem problemaBasico1) (:domain logisticaSE)
        (:objects 
            persona1 - persona
            caja1 - caja
            comida medicina - contenido
            A B C D deposito - loc
            dron1 - dron
            brazo1 - brazo
            brazo2 - brazo
        )

        (:init
                (persona-necesita-contenido persona1 comida)
            (loc-caja caja1 deposito)
            (loc-persona persona1 B)
            (loc-dron dron1 deposito)
            (caja-contenido caja1 comida)
            (brazo-dron-free dron1 brazo1)
            (brazo-dron-free dron1 brazo2)
        )

        (:goal (and
            (persona-tiene-contenido persona1 comida)#for personas
        ))


        )
        """

         Nombre del archivo que deseas crear o abrir
    nombre_archivo = "problema"+i
    i=i+1
    # Abrir el archivo en modo de escritura ('w')
    with open(nombre_archivo, 'w') as archivo:
        # Escribir el contenido en el archivo
        archivo.write(problemaBasico)
