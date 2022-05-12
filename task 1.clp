(deftemplate father-of
    (slot father)
    (slot child)
)

(deftemplate mother-of
    (slot mother)
    (slot child)
)

(deftemplate parents-of
    (slot mother)
    (slot father)
    (slot child)
)

(deftemplate father
    (slot person)
)

(deftemplate mother
    (slot person)
)

(deftemplate son
    (slot person)
)

(deftemplate male
    (slot person)
)

(deftemplate female
    (slot person)
)

(deffacts family
    (father-of (father Tom) (child John))
    (mother-of (mother Susan) (child John))
    (parents-of (mother Susan) (father Tom) (child John))
    (father (person Tom))
    (mother (perosn Susan))
    (son (person John))
    (male (person Tom))
    (female (person Susan))
    (male (person John))
)