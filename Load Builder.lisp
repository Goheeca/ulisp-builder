;; Options: :avr :arm :msp430 :esp :stm32 :badge :zero :riscv

(push :avr *features*)

;***************************************

;(push :interrupts *features*)

#+badge
(push :avr *features*)

#+(or arm esp stm32 riscv)
(push :float *features*)

#+(or arm esp stm32 riscv)
(push :arrays *features*)

#+(or esp)
(push :ethernet *features*)

#+(or riscv arm esp)
(push :gfx *features*)

#+(or riscv arm)
(push :code *features*)


;(load "./builder defsys.lisp")

;(compile-system "builder" :load t) 
(load "extras")
(load "functions")
(load "preface")
(load "utilities")
(load "saveload")
(load "prettyprint")
(load "assembler")
(load "postscript")
(load "avr")
(load "arm")
(load "esp")
(load "riscv")
(load "build")
