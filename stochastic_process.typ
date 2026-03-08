#set page(
  header: align(right)[随机过程习题精选],
  number-align: right,
  numbering: "1"
)

_*1.*_ 令$(X_n)$是$d$维的随机游动,其中序列${xi_n}$满足$P(|xi_n|>=1)>0$.证明:
$ P{attach(sup,b:n>=0)|X_n|=infinity}=1 $
*证:*

设事件$A_i={xi_i>=1},forall i in ZZ^+$,因为$xi_i$是独立同分布,所以$P(A_i)=p>0$,
因此$attach(Sigma,t:infinity,b:i=1)P(A_i)=infinity$.
根据Borel–Cantelli定理,$xi_i>=1$无穷次发生.
因此可以取序列${n_k}_(k>=1)$满足$xi_(n_k)>=1 ,forall k in ZZ^+$.

下面使用反证法:假设$P{attach(sup,b:n>=0)|X_n|=infinity}!=1$,即$exists M>0,X_n in B(X_0,M) ,forall n in ZZ^+$.

则根据_levy连续性定理_,我们有$X_n$的特征函数$phi_n$收敛到在0处连续的特征函数,即
#set math.equation(numbering:"(1)")
$ phi_n->phi "and" lim_(x->0)phi(x) = phi(0) = 1 $ <f1>
然而,如果设$xi_i$的特征函数为$0<=Phi<=1$,则$phi_n=Phi^n$,结合 @f1 得,
#set math.equation(numbering:none)
$ exists delta>0,Phi=1 ,forall x in U(0,delta) $
这说明在某个领域内,$xi_i$为常数,即$xi_i=c$,

若$c=0$,与$P(xi_i>=1)>0$矛盾!

若$c!=0$,则$|X_n|=|X_0+attach(Sigma,t:n,b:i=1)xi_i| = |X_0+n c| in.not B(X_0,M)$,矛盾!

证毕!
