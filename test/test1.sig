(* A Service file *)

signature SERVICES = sig
  type 'a res
  type ('a,'b) fcn  (* ~ 'a -> 'b *)
  type ticker = string
  type isodate = string
  val quotes : (ticker, (isodate * real) list res) fcn

  val allquotes : (unit, {symbol:ticker,date:isodate,eod:real} list res) fcn
end
