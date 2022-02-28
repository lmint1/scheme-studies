;; Defining piglatim function
(define (piglatim input)
  (if (member? (first input) 'aeiou)
      (word input 'ay)
      (piglatim (word (butfirst input) (first input))))) ;; else

;; The main code in piglatim function is that it makes a recursive call
;; passing the input with the first char moved to the end of the word.

;; Member? works like a contains
(member? 1 (list 1 2 3 4)) ;; returns #t
(member? 'a '(e i o u))    ;; returns #f

;; First returns the first char
(first 'Leandro) ;; l

;; Butfirst removes the first char
(butfirst 'Leandro) ;; eandro

;; Testing piglatim 
(piglatim 'hello)

;; Returns ellohay. Amazing!!!!

;; Note that everything here are expressions, the line breaks doesn't
;; affect the code, is only to make it easier for humans to understand. 
