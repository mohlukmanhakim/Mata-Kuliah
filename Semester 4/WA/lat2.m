clear all; close all;
    W=[.51 .29 .41 .32 .32 .36 .15 .38 .45 .21 .55];
    DG=sparse([2 6 6 2 5 5 3 4 4 1 1],[3 3 2 5 3 4 4 6 1 5 6],W)
  UG=tril(DG+DG')
    h=view(biograph(DG,[],'ShowWeights','on'))
    graphallshortestpaths(DG)
[dist, path] =graphshortestpath(DG, 1,2)
set (h.Nodes(path), 'color',[1 0.4 0.4])