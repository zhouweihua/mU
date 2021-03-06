(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
Int[ArcTanh[a_.*x_],x_Symbol] :=
  x*ArcTanh[a*x] + Log[1-a^2*x^2]/(2*a) /;
FreeQ[a,x]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_,x_Symbol] :=
  x*ArcTanh[a*x]^n -
  Dist[a*n,Int[x*ArcTanh[a*x]^(n-1)/(1-a^2*x^2),x]] /;
FreeQ[a,x] && IntegerQ[n] && n>1


(* ::Code:: *)
Int[x_*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  -ArcTanh[a*x]^n/(2*a^2) + x^2*ArcTanh[a*x]^n/2 +
  Dist[n/(2*a),Int[ArcTanh[a*x]^(n-1),x]] /;
FreeQ[a,x] && IntegerQ[n] && n>0


(* ::Code:: *)
Int[x_^m_*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  -x^(m-1)*ArcTanh[a*x]^n/(a^2*(m+1)) + x^(m+1)*ArcTanh[a*x]^n/(m+1) +
  Dist[n/(a*(m+1)),Int[x^(m-1)*ArcTanh[a*x]^(n-1),x]] +
  Dist[(m-1)/(a^2*(m+1)),Int[x^(m-2)*ArcTanh[a*x]^n,x]] /;
FreeQ[a,x] && IntegerQ[n] && n>0 && RationalQ[m] && m>1


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_/x_,x_Symbol] :=
  2*ArcTanh[a*x]^n*ArcTanh[1-2/(1-a*x)] -
  Dist[2*a*n,Int[ArcTanh[a*x]^(n-1)*ArcTanh[1-2/(1-a*x)]/(1-a^2*x^2),x]] /;
FreeQ[a,x] && IntegerQ[n] && n>1


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./x_^2,x_Symbol] :=
  -ArcTanh[a*x]^n/x +
  Dist[a*n,Int[ArcTanh[a*x]^(n-1)/(x*(1-a^2*x^2)),x]] /;
FreeQ[a,x] && IntegerQ[n] && n>0


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./x_^3,x_Symbol] :=
  a^2*ArcTanh[a*x]^n/2 - ArcTanh[a*x]^n/(2*x^2) +
  Dist[a*n/2,Int[ArcTanh[a*x]^(n-1)/x^2,x]] /;
FreeQ[a,x] && IntegerQ[n] && n>0


(* ::Code:: *)
Int[x_^m_*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  x^(m+1)*ArcTanh[a*x]^n/(m+1) - a^2*x^(m+3)*ArcTanh[a*x]^n/(m+1) -
  Dist[a*n/(m+1),Int[x^(m+1)*ArcTanh[a*x]^(n-1),x]] +
  Dist[a^2*(m+3)/(m+1),Int[x^(m+2)*ArcTanh[a*x]^n,x]] /;
FreeQ[a,x] && IntegerQ[n] && n>0 && RationalQ[m] && m<-3


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./(c_+d_.*x_),x_Symbol] :=
  -ArcTanh[a*x]^n*Log[2*c/(c+d*x)]/d +
  Dist[a*n/d,Int[ArcTanh[a*x]^(n-1)*Log[2*c/(c+d*x)]/(1-a^2*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c^2-d^2] && IntegerQ[n] && n>0


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./(x_*(c_+d_.*x_)),x_Symbol] :=
  ArcTanh[a*x]^n*Log[2-2*c/(c+d*x)]/c -
  Dist[a*n/c,Int[ArcTanh[a*x]^(n-1)*Log[2-2*c/(c+d*x)]/(1-a^2*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c^2-d^2] && IntegerQ[n] && n>0


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./(c_.*x_+d_.*x_^2),x_Symbol] :=
  ArcTanh[a*x]^n*Log[2-2*c/(c+d*x)]/c -
  Dist[a*n/c,Int[ArcTanh[a*x]^(n-1)*Log[2-2*c/(c+d*x)]/(1-a^2*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c^2-d^2] && IntegerQ[n] && n>0


(* ::Code:: *)
Int[x_^m_.*ArcTanh[a_.*x_]^n_./(c_+d_.*x_),x_Symbol] :=
  Dist[1/d,Int[x^(m-1)*ArcTanh[a*x]^n,x]] -
  Dist[c/d,Int[x^(m-1)*ArcTanh[a*x]^n/(c+d*x),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c^2-d^2] && RationalQ[m] && m>0 && IntegerQ[n] && n>0


(* ::Code:: *)
Int[x_^m_*ArcTanh[a_.*x_]^n_./(c_+d_.*x_),x_Symbol] :=
  Dist[1/c,Int[x^m*ArcTanh[a*x]^n,x]] -
  Dist[d/c,Int[x^(m+1)*ArcTanh[a*x]^n/(c+d*x),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c^2-d^2] && RationalQ[m] && m<-1 && IntegerQ[n] && n>0


(* ::Code:: *)
Int[1/((c_+d_.*x_^2)*ArcTanh[a_.*x_]),x_Symbol] :=
  Log[ArcTanh[a*x]]/(a*c) /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./(c_+d_.*x_^2),x_Symbol] :=
  ArcTanh[a*x]^(n+1)/(a*c*(n+1)) /;
FreeQ[{a,c,d,n},x] && ZeroQ[a^2*c+d] && NonzeroQ[n+1]


(* ::Code:: *)
Int[x_*ArcTanh[a_.*x_]^n_./(c_+d_.*x_^2),x_Symbol] :=
  ArcTanh[a*x]^(n+1)/(d*(n+1)) +
  Dist[1/(a*c),Int[ArcTanh[a*x]^n/(1-a*x),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./(x_*(c_+d_.*x_^2)),x_Symbol] :=
  ArcTanh[a*x]^(n+1)/(c*(n+1)) +
  Dist[1/c,Int[ArcTanh[a*x]^n/(x*(1+a*x)),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_./(c_.*x_+d_.*x_^3),x_Symbol] :=
  ArcTanh[a*x]^(n+1)/(c*(n+1)) +
  Dist[1/c,Int[ArcTanh[a*x]^n/(x*(1+a*x)),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0


(* ::Code:: *)
Int[x_^m_*ArcTanh[a_.*x_]^n_./(c_+d_.*x_^2),x_Symbol] :=
  Dist[1/d,Int[x^(m-2)*ArcTanh[a*x]^n,x]] -
  Dist[c/d,Int[x^(m-2)*ArcTanh[a*x]^n/(c+d*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && m>1 && n>0


(* ::Code:: *)
Int[x_^m_*ArcTanh[a_.*x_]^n_./(c_+d_.*x_^2),x_Symbol] :=
  Dist[1/c,Int[x^m*ArcTanh[a*x]^n,x]] -
  Dist[d/c,Int[x^(m+2)*ArcTanh[a*x]^n/(c+d*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && m<-1 && n>0


(* ::Code:: *)
Int[x_^m_.*ArcTanh[a_.*x_]^n_/(c_+d_.*x_^2),x_Symbol] :=
  Dist[1/(a^(m+1)*c),Subst[Int[x^n*Tanh[x]^m,x],x,ArcTanh[a*x]]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && (n<0 || Not[IntegerQ[n]]) && (IntegerQ[m] || PositiveQ[a])


(* ::Code:: *)
Int[x_^m_.*ArcTanh[a_.*x_]^n_/(c_+d_.*x_^2),x_Symbol] :=
  Dist[1/(a*c),Subst[Int[x^n*(Tanh[x]/a)^m,x],x,ArcTanh[a*x]]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && (n<0 || Not[IntegerQ[n]]) && Not[IntegerQ[m] || PositiveQ[a]]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_.*ArcTanh[u_]/(c_+d_.*x_^2),x_Symbol] :=
  Dist[1/2,Int[ArcTanh[a*x]^n*Log[1+u]/(c+d*x^2),x]] -
  Dist[1/2,Int[ArcTanh[a*x]^n*Log[1-u]/(c+d*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0 && (ZeroQ[u^2-(1-2/(1+a*x))^2] || ZeroQ[u^2-(1-2/(1-a*x))^2])


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_.*Log[u_]/(c_+d_.*x_^2),x_Symbol] :=
  ArcTanh[a*x]^n*PolyLog[2,1-u]/(2*a*c) -
  Dist[n/2,Int[ArcTanh[a*x]^(n-1)*PolyLog[2,1-u]/(c+d*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0 && ZeroQ[(1-u)^2-(1-2/(1+a*x))^2]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_.*Log[u_]/(c_+d_.*x_^2),x_Symbol] :=
  -ArcTanh[a*x]^n*PolyLog[2,1-u]/(2*a*c) +
  Dist[n/2,Int[ArcTanh[a*x]^(n-1)*PolyLog[2,1-u]/(c+d*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0 && ZeroQ[(1-u)^2-(1-2/(1-a*x))^2]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_.*PolyLog[p_,u_]/(c_+d_.*x_^2),x_Symbol] :=
  -ArcTanh[a*x]^n*PolyLog[p+1,u]/(2*a*c) +
  Dist[n/2,Int[ArcTanh[a*x]^(n-1)*PolyLog[p+1,u]/(c+d*x^2),x]] /;
FreeQ[{a,c,d,p},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0 && ZeroQ[u^2-(1-2/(1+a*x))^2]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_.*PolyLog[p_,u_]/(c_+d_.*x_^2),x_Symbol] :=
  ArcTanh[a*x]^n*PolyLog[p+1,u]/(2*a*c) -
  Dist[n/2,Int[ArcTanh[a*x]^(n-1)*PolyLog[p+1,u]/(c+d*x^2),x]] /;
FreeQ[{a,c,d,p},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>0 && ZeroQ[u^2-(1-2/(1-a*x))^2]


(* ::Code:: *)
Int[1/(ArcCoth[a_.*x_]*ArcTanh[a_.*x_]*(c_+d_.*x_^2)),x_Symbol] :=
  (-Log[ArcCoth[a*x]]+Log[ArcTanh[a*x]])/(a*c*ArcCoth[a*x]-a*c*ArcTanh[a*x]) /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d]


(* ::Code:: *)
Int[ArcCoth[a_.*x_]^m_.*ArcTanh[a_.*x_]^n_./(c_+d_.*x_^2),x_Symbol] :=
  ArcCoth[a*x]^(m+1)*ArcTanh[a*x]^n/(a*c*(m+1)) -
  Dist[n/(m+1),Int[ArcCoth[a*x]^(m+1)*ArcTanh[a*x]^(n-1)/(c+d*x^2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n] && 0<n<=m


(* ::Code:: *)
Int[ArcTanh[a_.*x_]/Sqrt[c_+d_.*x_^2],x_Symbol] :=
  -2*ArcTanh[a*x]*ArcTan[Sqrt[1-a*x]/Sqrt[1+a*x]]/(a*Sqrt[c]) - 
  I*PolyLog[2,-I*Sqrt[1-a*x]/Sqrt[1+a*x]]/(a*Sqrt[c]) + 
  I*PolyLog[2,I*Sqrt[1-a*x]/Sqrt[1+a*x]]/(a*Sqrt[c]) /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && PositiveQ[c]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]/Sqrt[c_+d_.*x_^2],x_Symbol] :=
  Sqrt[1-a^2*x^2]/Sqrt[c+d*x^2]*Int[ArcTanh[a*x]/Sqrt[1-a^2*x^2],x] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && Not[PositiveQ[c]]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]/(c_+d_.*x_^2)^(3/2),x_Symbol] :=
  -1/(a*c*Sqrt[c+d*x^2]) +
  x*ArcTanh[a*x]/(c*Sqrt[c+d*x^2]) /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d]


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_/(c_+d_.*x_^2)^(3/2),x_Symbol] :=
  -n*ArcTanh[a*x]^(n-1)/(a*c*Sqrt[c+d*x^2]) +
  x*ArcTanh[a*x]^n/(c*Sqrt[c+d*x^2]) +
  Dist[n*(n-1),Int[ArcTanh[a*x]^(n-2)/(c+d*x^2)^(3/2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n>1


(* ::Code:: *)
Int[ArcTanh[a_.*x_]^n_/(c_+d_.*x_^2)^(3/2),x_Symbol] :=
  ArcTanh[a*x]^(n+1)/(a*c*(n+1)*Sqrt[c+d*x^2]) -
  x*ArcTanh[a*x]^(n+2)/(c*(n+1)*(n+2)*Sqrt[c+d*x^2]) +
  Dist[1/((n+1)*(n+2)),Int[ArcTanh[a*x]^(n+2)/(c+d*x^2)^(3/2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n<-1 && n!=-2


(* ::Code:: *)
Int[(c_+d_.*x_^2)^m_.*ArcTanh[a_.*x_],x_Symbol] :=
  (c+d*x^2)^m/(2*a*m*(2*m+1)) +
  x*(c+d*x^2)^m*ArcTanh[a*x]/(2*m+1) +
  Dist[2*c*m/(2*m+1),Int[(c+d*x^2)^(m-1)*ArcTanh[a*x],x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[m] && m>0


(* ::Code:: *)
Int[(c_+d_.*x_^2)^m_*ArcTanh[a_.*x_],x_Symbol] :=
  -(c+d*x^2)^(m+1)/(4*a*c*(m+1)^2) -
  x*(c+d*x^2)^(m+1)*ArcTanh[a*x]/(2*c*(m+1)) +
  Dist[(2*m+3)/(2*c*(m+1)),Int[(c+d*x^2)^(m+1)*ArcTanh[a*x],x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[m] && m<-1 && m!=-3/2


(* ::Code:: *)
Int[(c_+d_.*x_^2)^m_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  -n*(c+d*x^2)^(m+1)*ArcTanh[a*x]^(n-1)/(4*a*c*(m+1)^2) -
  x*(c+d*x^2)^(m+1)*ArcTanh[a*x]^n/(2*c*(m+1)) +
  Dist[(2*m+3)/(2*c*(m+1)),Int[(c+d*x^2)^(m+1)*ArcTanh[a*x]^n,x]] +
  Dist[n*(n-1)/(4*(m+1)^2),Int[(c+d*x^2)^m*ArcTanh[a*x]^(n-2),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && m<-1 && m!=-3/2 && n>1


(* ::Code:: *)
Int[(c_+d_.*x_^2)^m_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  (c+d*x^2)^(m+1)*ArcTanh[a*x]^(n+1)/(a*c*(n+1)) +
  Dist[2*a*(m+1)/(n+1),Int[x*(c+d*x^2)^m*ArcTanh[a*x]^(n+1),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && m<-1 && n<-1


(* ::Code:: *)
Int[(c_+d_.*x_^2)^m_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  Dist[c^m/a,Subst[Int[x^n*Sech[x]^(2*(m+1)),x],x,ArcTanh[a*x]]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && m<-1 && (n<0 || Not[IntegerQ[n]]) && (IntegerQ[m] || PositiveQ[c])


(* ::Code:: *)
Int[(c_+d_.*x_^2)^m_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  c^(m-1/2)*Sqrt[c+d*x^2]/Sqrt[1-a^2*x^2]*Int[(1-a^2*x^2)^m*ArcTanh[a*x]^n,x] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n}] && m<-1 && (n<0 || Not[IntegerQ[n]]) && IntegerQ[m-1/2] && Not[PositiveQ[c]]


(* ::Code:: *)
Int[x_*(c_+d_.*x_^2)^p_.*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  (c+d*x^2)^(p+1)*ArcTanh[a*x]^n/(2*d*(p+1)) +
  Dist[n/(2*a*(p+1)),Int[(c+d*x^2)^p*ArcTanh[a*x]^(n-1),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{n,p}] && n>0 && p!=-1


(* ::Code:: *)
Int[x_*(c_+d_.*x_^2)^p_./ArcTanh[a_.*x_]^2,x_Symbol] :=
  -x*(c+d*x^2)^(p+1)/(a*c*ArcTanh[a*x]) +
  Dist[1/a,Int[(1-(2*p+3)*a^2*x^2)*(c+d*x^2)^p/ArcTanh[a*x],x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[p]


(* ::Code:: *)
Int[x_*ArcTanh[a_.*x_]^n_/(c_+d_.*x_^2)^2,x_Symbol] :=
  x*ArcTanh[a*x]^(n+1)/(a*c*(n+1)*(c+d*x^2)) +
  (1+a^2*x^2)*ArcTanh[a*x]^(n+2)/(d*(n+1)*(n+2)*(c+d*x^2)) +
  Dist[4/((n+1)*(n+2)),Int[x*ArcTanh[a*x]^(n+2)/(c+d*x^2)^2,x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[n] && n<-1 && n!=-2


(* ::Code:: *)
Int[x_^m_*(c_+d_.*x_^2)^p_.*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  x^(m+1)*(c+d*x^2)^(p+1)*ArcTanh[a*x]^n/(c*(m+1)) -
  Dist[a*n/(m+1),Int[x^(m+1)*(c+d*x^2)^p*ArcTanh[a*x]^(n-1),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n,2*p] && m<-1 && n>0 && ZeroQ[m+2*p+3]


(* ::Code:: *)
Int[x_^m_*(c_+d_.*x_^2)^p_.*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  x^m*(c+d*x^2)^(p+1)*ArcTanh[a*x]^(n+1)/(a*c*(n+1)) -
  Dist[m/(a*(n+1)),Int[x^(m-1)*(c+d*x^2)^p*ArcTanh[a*x]^(n+1),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n,2*p] && n<-1 && ZeroQ[m+2*p+2]


(* ::Code:: *)
Int[x_^m_*(c_+d_.*x_^2)^p_*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  Dist[1/d,Int[x^(m-2)*(c+d*x^2)^(p+1)*ArcTanh[a*x]^n,x]] -
  Dist[c/d,Int[x^(m-2)*(c+d*x^2)^p*ArcTanh[a*x]^n,x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n,2*p] && m>1 && n!=-1 && p<-1


(* ::Code:: *)
Int[x_^m_*(c_+d_.*x_^2)^p_*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  Dist[1/c,Int[x^m*(c+d*x^2)^(p+1)*ArcTanh[a*x]^n,x]] -
  Dist[d/c,Int[x^(m+2)*(c+d*x^2)^p*ArcTanh[a*x]^n,x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n,2*p] && m<0 && n!=-1 && p<-1


(* ::Code:: *)
Int[x_^m_*(c_+d_.*x_^2)^p_.*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  x^(m+1)*(c+d*x^2)^(p+1)*ArcTanh[a*x]^n/(c*(m+1)) -
  Dist[a*n/(m+1),Int[x^(m+1)*(c+d*x^2)^p*ArcTanh[a*x]^(n-1),x]] +
  Dist[a^2*(m+2*p+3)/(m+1),Int[x^(m+2)*(c+d*x^2)^p*ArcTanh[a*x]^n,x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n,2*p] && m<-1 && n>0 && NonzeroQ[m+2*p+3]


(* ::Code:: *)
Int[x_^m_.*(c_+d_.*x_^2)^p_.*ArcTanh[a_.*x_]^n_.,x_Symbol] :=
  x^m*(c+d*x^2)^(p+1)*ArcTanh[a*x]^(n+1)/(a*c*(n+1)) -
  Dist[m/(a*(n+1)),Int[x^(m-1)*(c+d*x^2)^p*ArcTanh[a*x]^(n+1),x]] +
  Dist[a*(m+2*p+2)/(n+1),Int[x^(m+1)*(c+d*x^2)^p*ArcTanh[a*x]^(n+1),x]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && IntegersQ[m,n,2*p] && n<-1 && NonzeroQ[m+2*p+2] && Not[m==1 && n==-2]


(* ::Code:: *)
Int[(e_.+f_.*x_^m_.)*(c_+d_.*x_^2)^p_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  Dist[c^p/a^(m+1),Subst[Int[Expand[x^n*TrigReduce[Regularize[(e*a^m+f*Tanh[x]^m)*Sech[x]^(2*(p+1)),x]]],x],x,ArcTanh[a*x]]] /;
FreeQ[{a,c,d,e,f},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n,p}] && p<-1 && (n<0 || Not[IntegerQ[n]]) && (IntegerQ[p] || PositiveQ[c]) && (IntegerQ[m] || PositiveQ[a])


(* ::Code:: *)
Int[x_^m_.*(c_+d_.*x_^2)^p_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  Dist[c^p/a,Subst[Int[x^n*(Tanh[x]/a)^m*Sech[x]^(2*(p+1)),x],x,ArcTanh[a*x]]] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n,p}] && p<-1 && (n<0 || Not[IntegerQ[n]]) && (IntegerQ[p] || PositiveQ[c]) && Not[IntegerQ[m] || PositiveQ[a]]


(* ::Code:: *)
Int[x_^m_.*(c_+d_.*x_^2)^p_*ArcTanh[a_.*x_]^n_,x_Symbol] :=
  c^(p-1/2)*Sqrt[c+d*x^2]/Sqrt[1-a^2*x^2]*Int[x^m*(1-a^2*x^2)^p*ArcTanh[a*x]^n,x] /;
FreeQ[{a,c,d},x] && ZeroQ[a^2*c+d] && RationalQ[{m,n,p}] && p<-1 && (n<0 || Not[IntegerQ[n]]) && IntegerQ[p-1/2] && Not[PositiveQ[c]]


(* ::Code:: *)
Int[ArcTanh[a_+b_.*x_],x_Symbol] :=
  (a+b*x)*ArcTanh[a+b*x]/b + Log[1-(a+b*x)^2]/(2*b) /;
FreeQ[{a,b},x]


(* ::Code:: *)
Int[ArcTanh[a_+b_.*x_^n_],x_Symbol] :=
  x*ArcTanh[a+b*x^n] -
  Dist[b*n,Int[x^n/(1-a^2-2*a*b*x^n-b^2*x^(2*n)),x]] /;
FreeQ[{a,b},x] && RationalQ[n]


(* ::Code:: *)
Int[ArcTanh[a_.+b_.*x_^n_.]/x_,x_Symbol] :=
  Dist[1/2,Int[Log[1+a+b*x^n]/x,x]] -
  Dist[1/2,Int[Log[1-a-b*x^n]/x,x]] /;
FreeQ[{a,b,n},x]


(* ::Code:: *)
Int[x_^m_.*ArcTanh[a_+b_.*x_^n_.],x_Symbol] :=
  x^(m+1)*ArcTanh[a+b*x^n]/(m+1) -
  Dist[b*n/(m+1),Int[x^(m+n)/(1-a^2-2*a*b*x^n-b^2*x^(2*n)),x]] /;
FreeQ[{a,b},x] && RationalQ[{m,n}] && m+1!=0 && m+1!=n


(* ::Code:: *)
Int[ArcTanh[a_+b_.*x_]^n_,x_Symbol] :=
  Dist[1/b,Subst[Int[ArcTanh[x]^n,x],x,a+b*x]] /;
FreeQ[{a,b},x] && IntegerQ[n] && n>1


(* ::Code:: *)
Int[x_^m_.*ArcTanh[a_+b_.*x_]^n_,x_Symbol] :=
  Dist[1/b^(m+1),Subst[Int[(x-a)^m*ArcTanh[x]^n,x],x,a+b*x]] /;
FreeQ[{a,b},x] && IntegersQ[m,n] && m>0 && n>1


(* ::Code:: *)
Int[ArcTanh[b_.*x_]/(c_+d_.*x_^n_.),x_Symbol] :=
  Dist[1/2,Int[Log[1+b*x]/(c+d*x^n),x]] -
  Dist[1/2,Int[Log[1-b*x]/(c+d*x^n),x]] /;
FreeQ[{b,c,d},x] && IntegerQ[n] && Not[n==2 && ZeroQ[b^2*c+d]]


(* ::Code:: *)
Int[ArcTanh[a_+b_.*x_]/(c_+d_.*x_^n_.),x_Symbol] :=
  Dist[1/2,Int[Log[1+a+b*x]/(c+d*x^n),x]] -
  Dist[1/2,Int[Log[1-a-b*x]/(c+d*x^n),x]] /;
FreeQ[{a,b,c,d},x] && IntegerQ[n] && Not[n==1 && ZeroQ[a*d-b*c]]


(* ::Code:: *)
Int[u_.*ArcTanh[c_./(a_.+b_.*x_^n_.)]^m_.,x_Symbol] :=
  Int[u*ArcCoth[a/c+b*x^n/c]^m,x] /;
FreeQ[{a,b,c,n,m},x]


(* ::Code:: *)
If[ShowSteps,

Int[u_*v_^n_.,x_Symbol] :=
  Module[{tmp=InverseFunctionOfLinear[u,x]},
  ShowStep["","Int[f[x,ArcTanh[a+b*x]]/(1-(a+b*x)^2),x]",
		   "Subst[Int[f[-a/b+Tanh[x]/b,x],x],x,ArcTanh[a+b*x]]/b",Hold[
  Dist[(-Discriminant[v,x]/(4*Coefficient[v,x,2]))^n/Coefficient[tmp[[1]],x,1],
	Subst[Int[Regularize[SubstForInverseFunction[u,tmp,x]*Sech[x]^(2*(n+1)),x],x], x, tmp]]]] /;
 NotFalseQ[tmp] && Head[tmp]===ArcTanh && ZeroQ[Discriminant[v,x]*tmp[[1]]^2-D[v,x]^2]] /;
SimplifyFlag && QuadraticQ[v,x] && IntegerQ[n] && n<0 && PosQ[Discriminant[v,x]] && MatchQ[u,r_.*f_^w_ /; FreeQ[f,x]],

Int[u_*v_^n_.,x_Symbol] :=
  Module[{tmp=InverseFunctionOfLinear[u,x]},
  Dist[(-Discriminant[v,x]/(4*Coefficient[v,x,2]))^n/Coefficient[tmp[[1]],x,1],
	Subst[Int[Regularize[SubstForInverseFunction[u,tmp,x]*Sech[x]^(2*(n+1)),x],x], x, tmp]] /;
 NotFalseQ[tmp] && Head[tmp]===ArcTanh && ZeroQ[Discriminant[v,x]*tmp[[1]]^2-D[v,x]^2]] /;
QuadraticQ[v,x] && IntegerQ[n] && n<0 && PosQ[Discriminant[v,x]] && MatchQ[u,r_.*f_^w_ /; FreeQ[f,x]]]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_]),x_Symbol] :=
  Int[u*(1+v)^(n/2)/(1-v)^(n/2),x] /;
EvenQ[n]


(* ::Code:: *)
Int[E^(n_.*ArcTanh[v_]),x_Symbol] :=
  Int[(1+v)^(n/2)/(1-v)^(n/2),x] /;
RationalQ[n]


(* ::Code:: *)
Int[x_^m_.*E^(n_.*ArcTanh[v_]), x_Symbol] :=
  Int[x^m*(1+v)^n/(1-v^2)^(n/2),x] /;
RationalQ[m] && OddQ[n] && PolynomialQ[v,x]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(1-v_^2)^m_.,x_Symbol] :=
  Int[u*(1-v)^(m-n/2)*(1+v)^(m+n/2),x] /;
RationalQ[{m,n}] && IntegerQ[m-n/2] && IntegerQ[m+n/2]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(a_+b_.*v_^2)^m_.,x_Symbol] :=
  (a+b*v^2)^m/(1-v^2)^m*Int[u*(1-v)^(m-n/2)*(1+v)^(m+n/2),x] /;
FreeQ[{a,b},x] && ZeroQ[a+b] && RationalQ[{m,n}] && IntegerQ[m-n/2] && IntegerQ[m+n/2]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(a_+b_. v_^2)^m_.,x_Symbol] :=
  Dist[a^m,Int[u*(1+v)^n*(1-v^2)^(m-n/2),x]] /;
FreeQ[{a,b},x] && ZeroQ[a+b] && RationalQ[n] && IntegerQ[m] && m>0


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(1+v_)^m_.,x_Symbol] :=
  Int[u*(1+v)^(m+n)/(1-v^2)^(n/2),x] /;
RationalQ[{m,n}] && IntegerQ[m+n]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(1+v_)^m_.,x_Symbol] :=
  Int[u*(1+v)^(m+n/2)/(1-v)^(n/2),x] /;
RationalQ[{m,n}]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(1-v_)^m_.,x_Symbol] :=
  Int[u*(1+v)^(n/2)*(1-v)^(m-n/2),x] /;
RationalQ[{m,n}]


(* ::Code:: *)
Int[u_.*E^(n_.*ArcTanh[v_])*(a_+b_.*v_)^m_.,x_Symbol] :=
  Dist[a^m,Int[u*E^(n*ArcTanh[v])*(1+b/a*v)^m,x]] /;
FreeQ[{a,b},x] && IntegerQ[m] && RationalQ[n] && NonzeroQ[a-1] && ZeroQ[a^2-b^2]


(* ::Code:: *)
Int[u_.*E^ArcTanh[v_]*(a_+b_./v_^2)^m_.,x_Symbol] :=
  b^m*Int[u*(1-v^2)^(m-1/2)/v^(2*m),x] + 
  b^m*Int[u*(1-v^2)^(m-1/2)/v^(2*m-1),x] /;
FreeQ[{a,b},x] && ZeroQ[a+b] && IntegerQ[m]


(* ::Code:: *)
Int[ArcTanh[b_.*f_^(c_.+d_.*x_)],x_Symbol] :=
  Dist[1/2,Int[Log[1+b*f^(c+d*x)],x]] -
  Dist[1/2,Int[Log[1-b*f^(c+d*x)],x]] /;
FreeQ[{b,c,d,f},x] 


(* ::Code:: *)
Int[x_^m_.*ArcTanh[b_.*f_^(c_.+d_.*x_)],x_Symbol] :=
  Dist[1/2,Int[x^m*Log[1+b*f^(c+d*x)],x]] -
  Dist[1/2,Int[x^m*Log[1-b*f^(c+d*x)],x]] /;
FreeQ[{b,c,d,f},x] && IntegerQ[m] && m>0


(* ::Code:: *)
Int[ArcTanh[u_],x_Symbol] :=
  x*ArcTanh[u] -
  Int[Regularize[x*D[u,x]/(1-u^2),x],x] /;
InverseFunctionFreeQ[u,x]


(* ::Code:: *)
Int[x_^m_.*ArcTanh[u_],x_Symbol] :=
  x^(m+1)*ArcTanh[u]/(m+1) -
  Dist[1/(m+1),Int[Regularize[x^(m+1)*D[u,x]/(1-u^2),x],x]] /;
FreeQ[m,x] && NonzeroQ[m+1] && InverseFunctionFreeQ[u,x] && 
	Not[FunctionOfQ[x^(m+1),u,x]] && 
	FalseQ[PowerVariableExpn[u,m+1,x]]


(* ::Code:: *)
Int[v_*ArcTanh[u_],x_Symbol] :=
  Module[{w=Block[{ShowSteps=False,StepCounter=Null}, Int[v,x]]},  
  w*ArcTanh[u] -
  Int[Regularize[w*D[u,x]/(1-u^2),x],x] /;
 InverseFunctionFreeQ[w,x]] /;
InverseFunctionFreeQ[u,x] && 
	Not[MatchQ[v, x^m_. /; FreeQ[m,x]]] &&
	FalseQ[FunctionOfLinear[v*ArcTanh[u],x]]
