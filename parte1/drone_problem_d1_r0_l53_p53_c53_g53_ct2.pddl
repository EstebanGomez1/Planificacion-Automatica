(define (problem drone_problem_d1_r0_l53_p53_c53_g53_ct2)(:domain logisticaSE)
(:objects
	dron1 - dron
	deposito - loc
	Loc1 - loc
	Loc2 - loc
	Loc3 - loc
	Loc4 - loc
	Loc5 - loc
	Loc6 - loc
	Loc7 - loc
	Loc8 - loc
	Loc9 - loc
	Loc10 - loc
	Loc11 - loc
	Loc12 - loc
	Loc13 - loc
	Loc14 - loc
	Loc15 - loc
	Loc16 - loc
	Loc17 - loc
	Loc18 - loc
	Loc19 - loc
	Loc20 - loc
	Loc21 - loc
	Loc22 - loc
	Loc23 - loc
	Loc24 - loc
	Loc25 - loc
	Loc26 - loc
	Loc27 - loc
	Loc28 - loc
	Loc29 - loc
	Loc30 - loc
	Loc31 - loc
	Loc32 - loc
	Loc33 - loc
	Loc34 - loc
	Loc35 - loc
	Loc36 - loc
	Loc37 - loc
	Loc38 - loc
	Loc39 - loc
	Loc40 - loc
	Loc41 - loc
	Loc42 - loc
	Loc43 - loc
	Loc44 - loc
	Loc45 - loc
	Loc46 - loc
	Loc47 - loc
	Loc48 - loc
	Loc49 - loc
	Loc50 - loc
	Loc51 - loc
	Loc52 - loc
	Loc53 - loc
	caja1 - caja
	caja2 - caja
	caja3 - caja
	caja4 - caja
	caja5 - caja
	caja6 - caja
	caja7 - caja
	caja8 - caja
	caja9 - caja
	caja10 - caja
	caja11 - caja
	caja12 - caja
	caja13 - caja
	caja14 - caja
	caja15 - caja
	caja16 - caja
	caja17 - caja
	caja18 - caja
	caja19 - caja
	caja20 - caja
	caja21 - caja
	caja22 - caja
	caja23 - caja
	caja24 - caja
	caja25 - caja
	caja26 - caja
	caja27 - caja
	caja28 - caja
	caja29 - caja
	caja30 - caja
	caja31 - caja
	caja32 - caja
	caja33 - caja
	caja34 - caja
	caja35 - caja
	caja36 - caja
	caja37 - caja
	caja38 - caja
	caja39 - caja
	caja40 - caja
	caja41 - caja
	caja42 - caja
	caja43 - caja
	caja44 - caja
	caja45 - caja
	caja46 - caja
	caja47 - caja
	caja48 - caja
	caja49 - caja
	caja50 - caja
	caja51 - caja
	caja52 - caja
	caja53 - caja
	food - contenido
	medicine - contenido
	persona0 - persona
	persona1 - persona
	persona2 - persona
	persona3 - persona
	persona4 - persona
	persona5 - persona
	persona6 - persona
	persona7 - persona
	persona8 - persona
	persona9 - persona
	persona10 - persona
	persona11 - persona
	persona12 - persona
	persona13 - persona
	persona14 - persona
	persona15 - persona
	persona16 - persona
	persona17 - persona
	persona18 - persona
	persona19 - persona
	persona20 - persona
	persona21 - persona
	persona22 - persona
	persona23 - persona
	persona24 - persona
	persona25 - persona
	persona26 - persona
	persona27 - persona
	persona28 - persona
	persona29 - persona
	persona30 - persona
	persona31 - persona
	persona32 - persona
	persona33 - persona
	persona34 - persona
	persona35 - persona
	persona36 - persona
	persona37 - persona
	persona38 - persona
	persona39 - persona
	persona40 - persona
	persona41 - persona
	persona42 - persona
	persona43 - persona
	persona44 - persona
	persona45 - persona
	persona46 - persona
	persona47 - persona
	persona48 - persona
	persona49 - persona
	persona50 - persona
	persona51 - persona
	persona52 - persona
	brazo1 - brazo
	brazo2 - brazo)
(:init
	(loc-dron dron1 Loc20)
	(persona-necesita-contenido persona0 food)
	(loc-persona persona0 Loc52)
	(caja-contenido caja1 food)
	(loc-caja caja1 deposito)
	(persona-necesita-contenido persona1 medicine)
	(loc-persona persona1 Loc32)
	(caja-contenido caja2 medicine)
	(loc-caja caja2 deposito)
	(persona-necesita-contenido persona2 food)
	(loc-persona persona2 Loc33)
	(caja-contenido caja3 food)
	(loc-caja caja3 deposito)
	(persona-necesita-contenido persona2 medicine)
	(loc-persona persona2 Loc41)
	(caja-contenido caja4 medicine)
	(loc-caja caja4 deposito)
	(persona-necesita-contenido persona3 food)
	(loc-persona persona3 Loc52)
	(caja-contenido caja5 food)
	(loc-caja caja5 deposito)
	(persona-necesita-contenido persona3 medicine)
	(loc-persona persona3 Loc11)
	(caja-contenido caja6 medicine)
	(loc-caja caja6 deposito)
	(persona-necesita-contenido persona4 medicine)
	(loc-persona persona4 Loc18)
	(caja-contenido caja7 medicine)
	(loc-caja caja7 deposito)
	(persona-necesita-contenido persona5 food)
	(loc-persona persona5 Loc14)
	(caja-contenido caja8 food)
	(loc-caja caja8 deposito)
	(persona-necesita-contenido persona6 food)
	(loc-persona persona6 Loc18)
	(caja-contenido caja9 food)
	(loc-caja caja9 deposito)
	(persona-necesita-contenido persona7 food)
	(loc-persona persona7 deposito)
	(caja-contenido caja10 food)
	(loc-caja caja10 deposito)
	(persona-necesita-contenido persona8 medicine)
	(loc-persona persona8 Loc12)
	(caja-contenido caja11 medicine)
	(loc-caja caja11 deposito)
	(persona-necesita-contenido persona9 food)
	(loc-persona persona9 Loc10)
	(caja-contenido caja12 food)
	(loc-caja caja12 deposito)
	(persona-necesita-contenido persona10 food)
	(loc-persona persona10 Loc53)
	(caja-contenido caja13 food)
	(loc-caja caja13 deposito)
	(persona-necesita-contenido persona11 food)
	(loc-persona persona11 Loc20)
	(caja-contenido caja14 food)
	(loc-caja caja14 deposito)
	(persona-necesita-contenido persona12 food)
	(loc-persona persona12 Loc32)
	(caja-contenido caja15 food)
	(loc-caja caja15 deposito)
	(persona-necesita-contenido persona14 food)
	(loc-persona persona14 Loc43)
	(caja-contenido caja16 food)
	(loc-caja caja16 deposito)
	(persona-necesita-contenido persona15 food)
	(loc-persona persona15 Loc18)
	(caja-contenido caja17 food)
	(loc-caja caja17 deposito)
	(persona-necesita-contenido persona16 food)
	(loc-persona persona16 Loc24)
	(caja-contenido caja18 food)
	(loc-caja caja18 deposito)
	(persona-necesita-contenido persona17 food)
	(loc-persona persona17 Loc25)
	(caja-contenido caja19 food)
	(loc-caja caja19 deposito)
	(persona-necesita-contenido persona19 food)
	(loc-persona persona19 Loc9)
	(caja-contenido caja20 food)
	(loc-caja caja20 deposito)
	(persona-necesita-contenido persona20 food)
	(loc-persona persona20 Loc30)
	(caja-contenido caja21 food)
	(loc-caja caja21 deposito)
	(persona-necesita-contenido persona20 medicine)
	(loc-persona persona20 Loc22)
	(caja-contenido caja22 medicine)
	(loc-caja caja22 deposito)
	(persona-necesita-contenido persona21 food)
	(loc-persona persona21 Loc7)
	(caja-contenido caja23 food)
	(loc-caja caja23 deposito)
	(persona-necesita-contenido persona21 medicine)
	(loc-persona persona21 Loc30)
	(caja-contenido caja24 medicine)
	(loc-caja caja24 deposito)
	(persona-necesita-contenido persona22 food)
	(loc-persona persona22 Loc6)
	(caja-contenido caja25 food)
	(loc-caja caja25 deposito)
	(persona-necesita-contenido persona23 food)
	(loc-persona persona23 Loc8)
	(caja-contenido caja26 food)
	(loc-caja caja26 deposito)
	(persona-necesita-contenido persona24 food)
	(loc-persona persona24 Loc14)
	(caja-contenido caja27 food)
	(loc-caja caja27 deposito)
	(persona-necesita-contenido persona24 medicine)
	(loc-persona persona24 Loc25)
	(caja-contenido caja28 medicine)
	(loc-caja caja28 deposito)
	(persona-necesita-contenido persona26 food)
	(loc-persona persona26 Loc26)
	(caja-contenido caja29 food)
	(loc-caja caja29 deposito)
	(persona-necesita-contenido persona27 food)
	(loc-persona persona27 Loc25)
	(caja-contenido caja30 food)
	(loc-caja caja30 deposito)
	(persona-necesita-contenido persona28 food)
	(loc-persona persona28 Loc3)
	(caja-contenido caja31 food)
	(loc-caja caja31 deposito)
	(persona-necesita-contenido persona28 medicine)
	(loc-persona persona28 Loc16)
	(caja-contenido caja32 medicine)
	(loc-caja caja32 deposito)
	(persona-necesita-contenido persona29 medicine)
	(loc-persona persona29 Loc16)
	(caja-contenido caja33 medicine)
	(loc-caja caja33 deposito)
	(persona-necesita-contenido persona30 food)
	(loc-persona persona30 Loc5)
	(caja-contenido caja34 food)
	(loc-caja caja34 deposito)
	(persona-necesita-contenido persona31 food)
	(loc-persona persona31 Loc5)
	(caja-contenido caja35 food)
	(loc-caja caja35 deposito)
	(persona-necesita-contenido persona33 medicine)
	(loc-persona persona33 Loc53)
	(caja-contenido caja36 medicine)
	(loc-caja caja36 deposito)
	(persona-necesita-contenido persona34 food)
	(loc-persona persona34 Loc5)
	(caja-contenido caja37 food)
	(loc-caja caja37 deposito)
	(persona-necesita-contenido persona34 medicine)
	(loc-persona persona34 Loc53)
	(caja-contenido caja38 medicine)
	(loc-caja caja38 deposito)
	(persona-necesita-contenido persona35 food)
	(loc-persona persona35 Loc35)
	(caja-contenido caja39 food)
	(loc-caja caja39 deposito)
	(persona-necesita-contenido persona35 medicine)
	(loc-persona persona35 Loc42)
	(caja-contenido caja40 medicine)
	(loc-caja caja40 deposito)
	(persona-necesita-contenido persona37 food)
	(loc-persona persona37 Loc53)
	(caja-contenido caja41 food)
	(loc-caja caja41 deposito)
	(persona-necesita-contenido persona38 food)
	(loc-persona persona38 Loc44)
	(caja-contenido caja42 food)
	(loc-caja caja42 deposito)
	(persona-necesita-contenido persona39 food)
	(loc-persona persona39 Loc10)
	(caja-contenido caja43 food)
	(loc-caja caja43 deposito)
	(persona-necesita-contenido persona40 food)
	(loc-persona persona40 Loc20)
	(caja-contenido caja44 food)
	(loc-caja caja44 deposito)
	(persona-necesita-contenido persona43 food)
	(loc-persona persona43 Loc5)
	(caja-contenido caja45 food)
	(loc-caja caja45 deposito)
	(persona-necesita-contenido persona44 food)
	(loc-persona persona44 Loc44)
	(caja-contenido caja46 food)
	(loc-caja caja46 deposito)
	(persona-necesita-contenido persona45 food)
	(loc-persona persona45 Loc41)
	(caja-contenido caja47 food)
	(loc-caja caja47 deposito)
	(persona-necesita-contenido persona46 food)
	(loc-persona persona46 Loc26)
	(caja-contenido caja48 food)
	(loc-caja caja48 deposito)
	(persona-necesita-contenido persona47 food)
	(loc-persona persona47 Loc8)
	(caja-contenido caja49 food)
	(loc-caja caja49 deposito)
	(persona-necesita-contenido persona48 food)
	(loc-persona persona48 Loc3)
	(caja-contenido caja50 food)
	(loc-caja caja50 deposito)
	(persona-necesita-contenido persona49 food)
	(loc-persona persona49 Loc4)
	(caja-contenido caja51 food)
	(loc-caja caja51 deposito)
	(persona-necesita-contenido persona51 food)
	(loc-persona persona51 Loc44)
	(caja-contenido caja52 food)
	(loc-caja caja52 deposito)
	(persona-necesita-contenido persona52 food)
	(loc-persona persona52 Loc21)
	(caja-contenido caja53 food)
	(loc-caja caja53 deposito)
	(brazo-dron-free dron1 brazo1)
	(brazo-dron-free dron1 brazo2)
)
(:goal (and

	(loc-dron dron1 deposito)
	(persona-tiene-contenido persona0 food)
	(persona-tiene-contenido persona1 medicine)
	(persona-tiene-contenido persona2 food)
	(persona-tiene-contenido persona2 medicine)
	(persona-tiene-contenido persona3 food)
	(persona-tiene-contenido persona3 medicine)
	(persona-tiene-contenido persona4 medicine)
	(persona-tiene-contenido persona5 food)
	(persona-tiene-contenido persona6 food)
	(persona-tiene-contenido persona7 food)
	(persona-tiene-contenido persona8 medicine)
	(persona-tiene-contenido persona9 food)
	(persona-tiene-contenido persona10 food)
	(persona-tiene-contenido persona11 food)
	(persona-tiene-contenido persona12 food)
	(persona-tiene-contenido persona14 food)
	(persona-tiene-contenido persona15 food)
	(persona-tiene-contenido persona16 food)
	(persona-tiene-contenido persona17 food)
	(persona-tiene-contenido persona19 food)
	(persona-tiene-contenido persona20 food)
	(persona-tiene-contenido persona20 medicine)
	(persona-tiene-contenido persona21 food)
	(persona-tiene-contenido persona21 medicine)
	(persona-tiene-contenido persona22 food)
	(persona-tiene-contenido persona23 food)
	(persona-tiene-contenido persona24 food)
	(persona-tiene-contenido persona24 medicine)
	(persona-tiene-contenido persona26 food)
	(persona-tiene-contenido persona27 food)
	(persona-tiene-contenido persona28 food)
	(persona-tiene-contenido persona28 medicine)
	(persona-tiene-contenido persona29 medicine)
	(persona-tiene-contenido persona30 food)
	(persona-tiene-contenido persona31 food)
	(persona-tiene-contenido persona33 medicine)
	(persona-tiene-contenido persona34 food)
	(persona-tiene-contenido persona34 medicine)
	(persona-tiene-contenido persona35 food)
	(persona-tiene-contenido persona35 medicine)
	(persona-tiene-contenido persona37 food)
	(persona-tiene-contenido persona38 food)
	(persona-tiene-contenido persona39 food)
	(persona-tiene-contenido persona40 food)
	(persona-tiene-contenido persona43 food)
	(persona-tiene-contenido persona44 food)
	(persona-tiene-contenido persona45 food)
	(persona-tiene-contenido persona46 food)
	(persona-tiene-contenido persona47 food)
	(persona-tiene-contenido persona48 food)
	(persona-tiene-contenido persona49 food)
	(persona-tiene-contenido persona51 food)
	(persona-tiene-contenido persona52 food)
	))
)