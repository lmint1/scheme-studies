;; Define acronym function
(define (acronymOf words)
  (accumulate word (every first words)))

(first 'Leandro)

(acronymOf '(reduced instruction set computer))

;; Should return SICP but it's not working
(acronymOf '(Structure and Interpretation of Computer Programs))
;; Lets create a better function

;; Defining a validation function
(define (is-valid-word? word)
  (not (member? word '(and of de do da))))

;; Defining our new acronym function
(define (acronymOf words)
  (accumulate word (every first (keep is-valid-word? words))))

;; This line will filter 'and' 
(keep is-valid-word? '(Structure and Interpretatio))

;; Lets try to show SICP 
(acronymOf '(Structure and Interpretation of Computer Programs))

;; Yeees, its working now \o/ 
