function d=distance_j_i(X,cs,a,b)

    n=size(cs,2);
    temp=0;
    for i=1:n
        temp=temp+(X(cs(i),a)-X(cs(i),b)).*(X(cs(i),a)-X(cs(i),b));
    end
    d=sqrt(temp);

end
