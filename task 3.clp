(deftemplate father-of (slot father) (slot child))
(deftemplate mother-of (slot mother) (slot child))
(deftemplate male (slot person))
(deftemplate female (slot person))
(deftemplate wife-of (slot wife) (slot husband))
(deftemplate husband-of (slot husband) (slot wife))


;(a) uncle

(deftemplate uncle-of (slot uncle)(slot newphew))

(defrule ruleA
	(or(father-of (father ?p1)(child ?p2))
		(mother-of (mother ?p1)(child ?p2)))
		
	(or(father-of (father ?p1)(child ?p3))
		(mother-of (mother ?p1)(child ?p3)))
		
	(or(father-of (father ?p2)(child ?p4))
		(mother-of (mother ?p2)(child ?p4)))
	=>
	(assert (uncle-of (uncle ?p3)(nephew ?p4)


;(b) Grandparent

(deftemplate grandparents-of (slot grandparent)(slot person))

(defrule ruleB
	(father-of (father ?p1)(child ?p2))
	(father-of (father ?p2)(child ?p3))
	=>
	(assert (grnadparents-of (grandparent ?p1)(person ?p3)))
)

;(c) Brother

(deftemplate brother-of (slot brother)(slot silbling))

(defrule ruleC
    (or (or (and (father-of (father ?p1)(child ?p2))
        (father-of (father ?p1) (child ?p3)))
    (and (mother-of (mother ?p1) (child ?p2))
        (mother-of (mother ?p1) (child ?p3)))
    )
    (and
        (and (father-of (father ?p1) (child ?p2))
            (mother-of (mother ?p4) (child ?p3)))
        (or (wife-of (wife ?p4) (husband ?p1))
            (husband-of (husband ?p1) (wife ?p4)))
        )
        (male (person ?p2))
        =>
        (assert (brother-of (brother ?p2) (sibling ?p3)))
    )
)
