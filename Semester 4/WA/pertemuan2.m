clear all; close all;
    W=[.5 .4 .3 .4 .2 .1];
    DG=sparse([2 1 4 4 3 5],[1 3 3 2 5 4],W)
    VG=tril(DG+DG')
    h=view(biograph(VG,[],'ShowWeights','on'))
    graphallshortestpaths(VG)
    [dist, path] =graphshortestpath(VG, 5,1)
    set (h.Nodes(path), 'color',[0.8 0.8 1])