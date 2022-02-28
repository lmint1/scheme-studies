;; Defining factorial function n! = n (n − 1)!
(define (factorial n)
  (if (= n 0)
      1
      (* n (factorial (- n 1)))))

(factorial 6) ;; 720

(factorial -1) ;; Aborting!: maximum recursion depth exceeded 'o' StackOverflow???
