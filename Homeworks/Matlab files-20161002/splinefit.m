% least-squares piecewise-polynomial fitting 

t = [ ...
 -7.62035373e-01
 -4.55770775e-01
 -6.30044833e-01
 -3.96079961e-01
 -3.74279696e-01
 -9.34471141e-01
 -9.86832008e-01
 -1.62530918e-01
 -7.40645986e-01
 -7.65669039e-01
 -4.35516449e-03
 -5.29736492e-01
 -1.63538549e-01
 -5.23646791e-01
 -3.60931859e-01
 -8.49383576e-01
 -3.65139342e-01
 -1.31954693e-01
 -4.76818790e-01
 -2.58748144e-01
 -3.28588525e-01
 -9.35968562e-01
 -2.41769754e-01
 -4.08900417e-01
 -6.98732340e-01
 -9.68988249e-01
 -1.34472763e-01
 -5.27250911e-01
 -2.81176076e-01
 -1.21187200e-01
 -2.85870516e-01
 -7.89013324e-02
 -6.05036596e-01
 -1.99091229e-01
 -5.55378944e-01
 -6.44132783e-02
 -1.21133340e-01
 -9.02545690e-01
 -8.64031140e-01
 -7.83013059e-01
 -3.45198611e-02
 -5.63838133e-01
 -3.73351709e-01
 -6.98973802e-01
 -4.92757016e-01
 -6.14133741e-01
 -6.49089511e-01
 -4.14925893e-01
 -4.15748207e-01
 -9.57982292e-02
 6.81982137e-01
 9.28945601e-01
 8.56400566e-01
 9.90989645e-01
 6.71273542e-01
 1.63099622e-01
 8.60637533e-01
 9.64632947e-01
 9.04695985e-01
 5.69107503e-01
 7.13817020e-01
 2.11124984e-01
 8.31607930e-01
 5.73532352e-01
 2.84957462e-01
 6.34605771e-02
 8.53942488e-01
 9.89806015e-01
 8.85180931e-02
 8.00595321e-01
 4.10461827e-01
 1.50765374e-01
 2.93891247e-01
 7.68791887e-01
 8.72767025e-01
 4.41900611e-02
 6.14532529e-01
 4.49402435e-02
 7.18440477e-01
 3.30954146e-01
 8.80905307e-01
 9.80635757e-01
 5.05420374e-01
 9.98508945e-01
 3.09670053e-01
 7.69707047e-02
 5.99762809e-01
 3.13777622e-02
 1.97384856e-01
 4.07936136e-01
 6.10467123e-01
 1.56198991e-01
 4.24358247e-02
 8.67779034e-01
 3.13830520e-01
 9.58659426e-01
 8.96659641e-01
 3.77789239e-01
 4.60409633e-01
 5.20072985e-01
];
y = [...
 2.11974376e-01
 3.88773507e-01
 4.91956564e-01
 4.45308388e-01
 3.88162343e-01
 1.00704960e-01
 2.03784618e-02
 4.26427442e-01
 4.46112108e-01
 3.61211632e-01
 4.05088525e-01
 3.72774476e-01
 4.58122545e-01
 3.69994855e-01
 4.13245540e-01
 2.28566642e-01
 4.50220959e-01
 4.04192489e-01
 4.88925596e-01
 3.82278983e-01
 4.14375913e-01
 1.50235745e-01
 2.69664697e-01
 3.96604418e-01
 3.67473199e-01
 4.54684535e-02
 4.05240372e-01
 4.73810000e-01
 4.03613145e-01
 3.98946520e-01
 3.99702280e-01
 4.70807875e-01
 4.06369247e-01
 4.07783536e-01
 4.16279356e-01
 3.89922796e-01
 3.65028713e-01
 1.86604631e-01
 2.06406549e-01
 4.00188335e-01
 4.28102909e-01
 4.97501585e-01
 2.81611113e-01
 4.60758291e-01
 3.87431466e-01
 4.20216084e-01
 4.46837060e-01
 3.39021718e-01
 3.69750951e-01
 4.43402091e-01
 -3.68317384e-01
 -2.05953922e-01
 -2.29363861e-01
 -7.15742539e-02
 -3.77793976e-01
 1.73341412e-01
 -2.71407148e-01
 4.75705118e-03
 -2.28845330e-01
 -3.69010373e-01
 -3.68145320e-01
 -6.93462224e-02
 -2.15730121e-01
 -3.83335046e-01
 -2.15483311e-01
 3.04866898e-01
 -2.58970384e-01
 5.63532504e-02
 3.06617527e-01
 -1.58414881e-01
 -2.06854868e-01
 7.09107126e-02
 -1.47327089e-01
 -3.38390818e-01
 -1.29882571e-01
 3.63910524e-01
 -4.43224091e-01
 3.09311036e-01
 -3.27364184e-01
 -1.40265965e-01
 -1.90304444e-01
 -2.43093102e-02
 -3.85759689e-01
 4.60203655e-02
 -1.82875791e-01
 2.66745380e-01
 -3.15924453e-01
 3.08730059e-01
 -6.61666742e-02
 -3.04443009e-01
 -3.95902069e-01
 5.81697769e-02
 2.47443900e-01
 -1.68572800e-01
 -1.73257495e-01
 -4.60740368e-02
 -2.04506522e-01
 -1.94157482e-01
 -2.77704024e-01
 -2.10530714e-01 ];
