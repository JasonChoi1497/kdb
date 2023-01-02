ols_beta: {[X; y]
  / X: n by k matrix, n observations, k features 
  / y: n by 1 or m matrix, n observations, 1 or m variables
  ytx: flip[y] mmu X;
  xtx: flip[X] mmu X;
  beta: ytx lsq xtx;
  :beta;
  };

ols_resid: {[X; y]
  beta: ols_beta[X; y];
  :y - X mmu beta;
  };
