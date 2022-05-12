(defrule maintenance1
	(starter-turning yes)
	=>
	(printout t "Got any petrol?" crlf))

(defrule maintenance2
	(starter-turning no)
	=>
	(printout t "Lights working?" crlf))

(defrule maintenance3
	(starter-turning yes)
	(got-any-petrol yes)
	=>
	(printout t "Call the AA" crlf))

(defrule maintenance4
	(starter-turning yes)
	(got-any-petrol no)
	=>
	(printout t "Buy some!" crlf))

(defrule maintenance5
	(starter-turning no)
	(lights-working no)
	=>
	(printout t "Charge battery" crlf))

(defrule maintenance6
	(starter-turning no)
	(lights-working yes)
	=>
	(printout t "Solenoid click?" crlf))

(defrule maintenance7
	(starter-turning no)
	(lights-working yes)
	(solenoid-click yes)
	=>
	(printout t "Terminals clean?" crlf))

defrule maintenance8
	(starter-turning no)
	(lights-working yes)
	(solenoid-click no)
	=>
	(printout t "Solenoid fuse OK?" crlf))

(defrule maintenance9
	(starter-turning no)
	(lights-working yes)
	(solenoid-click yes)
	(terminals-clean yes)
	=>
	(printout t "Replace Starter" crlf))

(defrule maintenance10
	(starter-turning no)
	(lights-working yes)
	(solenoid-click yes)
	(terminals-clean no)
	=>
	(printout t "Clean Terminals" crlf))

(defrule maintenance11
	(starter-turning no)
	(lights-working yes)
	(solenoid-click no)
	(solenoid-fuse-ok yes)
	=>
	(printout t "Replace Solenoid" crlf))

(defrule maintenance12
	(starter-turning no)
	(lights-working yes)
	(solenoid-click no)
	(solenoid-fuse-ok no)
	=>
	(printout t "Replace Fuse" crlf))
	
