(
 (readline-input-history
  (
   #"(foo 4)"
   #"(define (foo x)\n  (cond [(zero? x) 1]\n        [(even? x) (+ x (foo (- x 1)))]\n        [else (- x (foo (- x\n                           1)))]\n        )\n  )"
   #"(foo 4)"
   #"(define (foo x)\n  (cond [(zero? x) 1]\n        [(even? x) (+ x (foo (- n 1)))]\n        [else (- x (foo (- n 1)))]\n        )\n  )"
   #"(define (foo x)\n  (cond [(zero? x) 1]\n        [(even? x) (+ x (foo (- n 1)))]\n        [(else) (- x (foo (- n 1)))]\n        )\n  )"
   #"(f 5)"
   #"(define (f x)\n  (if (zero? x) 1\n      (* x (f (- x 1)))\n      )\n  )"
   #"(f 5)"
   #"(define (f x)\n  (if (zero? x) 1\n      (* x (fact (- x 1)))\n      )\n  )"
   #"defines"
   #"define"
   #"(define (fact (x))\n  (if (zero? x) 1\n      (* x (fact (- x 1)))\n      )\n  )"
   #"(member 'x '(x y z))"
   #"(member 'x '(y z))"
   #"member"
   #"(member? 'x '(x y z))"
   #"(member 'x '(x y z))"
   #"(member '(x y z) 'x)"
   #"((lambda x x) 2 4 5)"
   #"((lambda x (car x)) 2 4 5)"
   #"((lambda (x) ((cdr x) (car x))) (cons 5 null?))"
   #"(map (lambda (x y z) (z x y))\n     (list list)\n     (list list)\n     (list cons)\n     )"
   #"(map (lambda (x y z) (z x y))\n     (list)\n     (list)\n     (list)\n     )"
   #",bt"
   #"(apply (lambda (x y z) (z x y))\n       (list list list)\n       )"
   #"((lambda (x y z) (z x y))\n (list list list)\n )"
   #"(lambda (x y z) (z x y))"
   #"(map (lambda(x y z) (z x y))\n     (list list cons) (list list cons) (list cons list)\n     )"
   #"(cons (list (list)))"
   #"(cons (list) (list)\n      )"
   #"(cons list list)"
   #"(list)"
   #"(cons)"
   #"(exit)"
   #"(trace add2 8)"
   #"(add2 8)"
   #"(trace add2)"
   #"(require racket/trace)"
   #"(define add2 (lambda (x) (+ x 2)))"
   #"(apply map list (apply map list '((N A) (P O) (L E) (O N))))"
   #"(apply map - (apply map list '((N A) (P O) (L E) (O N))))"
   #"(apply map (apply map list '((N A) (P O) (L E) (O N))))"
   #"(apply list (apply map list '((N A) (P O) (L E) (O N))))"
   #"(apply - (apply map list '((N A) (P O) (L E) (O N))))"
   #"(apply map list '((N A) (P O) (L E) (O N)))"
   #"(map list '(1 2) '(3 4) '(5 6))"
   #"(map list '((1 2) (3 4) (5 6)))"
   #"(apply map list '((1 2) (3 4) (5 6)))"
   #"((compose apply map list) '((1 2) (3 4) (5 6)))"
   #"((compose apply map list) \302\241((1 2) (3 4) (5 6)))"
   #"((compose apply map list) M)"
   #"((compose (lambda (x) (expt x 2)) -) 1 3)"
   #"(compose (lambda (x) (expt x 2)) -)"
   #"(filter (and (positive?) (even?)) '(1 -1 2 -2)))"
   #"exit"
   #"(map (lambda (list) (cons list 'tagged)) '(1 2 3))"
   #"(map (lambda (list) (cons list 'tagged)) '(1 2 3) '(a b c))"
   #"(foo 'a 'b 'c '1 '2 '3 '4 69)"
   #"(foo 'a 'b 'c '1 '2 '3 '4)"
   #"(foo 'a 'b 'c '(1 2 3 4))"
   #"(define foo (lambda (a b c . opt) (cons (list a b c) opt) )\n  )"
   #"(findErr f 0 3 0.00000000005 nextFalsi)"
   #"(findErr f 0 3 0.00000000005 nextBiseccion)"
   #"(findIter f 0 3 50 nextBiseccion)"
   #"(findIter f 0 3 5 nextBiseccion)"
   #"(require \"racketNumerico.rkt\")"
   #"(findErr (lambda (x) (expt x 2)) 0 3 0.00005 nextBiseccion)"
   #"(findErr f 0 3 0.00005 nextBiseccion)"
   #"(exti)"
   #"(require \"racketNumerico.rkt\"\n  )"
   #"(findErr f 0 3 0.0005 nextBiseccion)"
   #"(rqequire \"racketNumerico.rkt\")"
   #"(findIter (lambda (x) (+ (expt x 7) (expt x 4) (expt x 2) 13)) -15 15 100 nextBiseccion)"
   #"(findIter (lambda (x) (+ (expt x 7) (expt x 4) (expt x 2) 13)) -15 15 100 nextFalsi)"
   #"(findErr f 0 3 0.09 nextBiseccion)"
   #"(findIter (lambda (x) (+ (expt x '5) (expt x '2) x 7)) -10 10 50 nextBiseccion)"
   #"(findErr (lambda (x) (+ (expt x '5) (expt x '2) x 7)) -10 10 0.00005 nextBiseccion)"
   #"(findErr (lambda (x) (+ (expt x '5) (expt x '2) x 7)) -10 10 0.05 nextBiseccion)"
   #"(findErr f 0 3 0.005 nextBiseccion)"
   #"(exit\n  )"
   #"(sqrt (apply + (map (lambda(x y) (expt (- x y) 2)) '(2 3 8) '(4 5 0))))"
   #"(sqrt(apply+(map(lambda(x y) (expt (- x y) 2)) '(2 3 8) '(4 5 0))))"
   #"(map + '(1 2 3) '(4 5 6))"
   #"(map add1 '(1 2 3) '(4 5 6))"
   #"(amp add1 '(1 2 3) '(4 5 6))"
   #"(map add1 '(1 2 3))"
   #"(add1 '1)"
   #"(promedio -1 -2 -3)"
   #"(promedio '1 '2 '3)"
   #"(promedio '1 '2)"
   #"(promedio '1)"
   #"(define promedio (lambda (x . y) (/ (apply + x y) (+ 1 (length y)))))"
   #"(promedio)"
   #"(define promedio (lambda (x . y) (/ (apply + a l) (+ 1 (length l)))))"
   #"(promedio '1 '2 '3 '(1 2 3))"
   #"(promedio '1 '2 '3 'blyat)"
   #"(define promedio (lambda x (/ (apply + x) (length x))))"
   #"(promedio 1 2 3)"
   #"(define promedio (lambda x (/ (apply (+ x)) (length x))))"
   #"((lambda x (length x)) '1 'perro '5 '(2 . 4) 'blyat)"
   #"((lambda x (length x)) '1 'perro '5 'blyat)"
   #"((lambda x (length x)) '1 'perro '5 '(2 . 4) 'blyat'\n  )"
   #"(lambda x (length x))"
   #"(define (promedio args ...)\n  (/ (apply + args) (length args))\n  )"
   #"(define promedio args ...)"
   #",bt"
   #"(max '0 '(1 2 3))"
   #"(apply max '0 '(-1 -2 -3))"
   #"'(1 2 3)"
   #"(apply max '0 '(1 2 3))"
   #"(apply (lambda (x) (+ x 1)) '(1 2 3))"
   #"(apply max '(1 2 3))"
   #"(apply add1 '(1 2 3))"
   #"(drop-until number? '(ana mendez 1 2 3 M))"
   #"(drop-until number? '(ana mendez 1 2 3M))"
   #"(define (drop-until f list)\n  (drop-while (lambda (elem) (not (f elem))) list)\n  )"
   #"(take-while number? (drop-while symbol? '(ana rodriguez 1 2 3 M)))"
   #"(take-while symbol? '(ana rodriguez 1 2 3 M))"
   #"(take-while number? '(ana rodriguez 1 2 3 M))"
   #"(drop-while (lambda (x) (positive? x)) '(1 2 3 -1 2 3))"
   #"drop-while"
   #"drop-until"
   #"(drop-until (lambda (x) (positive? x)) '(1 2 3 -1 2 3))"
   #"(symbol? (take-while (lambda (x) (not (positive? x))) '(1 2 3 -1 2 3)))"
   #"(time (list? (take-while (lambda (x) (not (positive? x))) '(1 2 3 -1 2 3))))"
   #"(list? (take-while (lambda (x) (not (positive? x))) '(1 2 3 -1 2 3)))"
   #"(atom? (take-while (lambda (x) (not (positive? x))) '(1 2 3 -1 2 3)))"
   #"(take-while (lambda (x) (not (positive? x))) '(1 2 3 -1 2 3))"
   #"(take-while (lambda (x) (positive? x)) '(1 2 3 -1 2 3))"
   #"(take-while (lambda (x) (positive? x)) \302\241(1 2 3 -1 2 3))"
   #"(require srfi/1)"
   #"(require srfi\\1)"
  ))
)