function Fit_S=knn_fit(cs,X,k,maxN)

    Fit_S=0; 
    cs = ceil(cs);
    m=size(X,2);  %no of samples in data%
    for i=1:m 
      
        d=ones(2,m);
        d(1,i)=100000;
        d(2,i)=i;
        %caclulate distance of ith sample from all jth samples%
        for j=1:m
            if ~(j==i)
                d(1,j)=distance_j_i(X,cs,i,j);
                d(2,j)=j;
            end
        end
        %sort the distances%
        count=count_no_of_normal_genes(k,d,maxN,m);
        
        %calculate the class of ith sample%
        if i<=maxN
            ci=0;   %ci=0->normal, ci=1->disease%
        else
            ci=1;
        end
        
        
        % compare the class of ith sample with the majority of classes%
        if ci==0 && count>k/2
            score_i=1;
        elseif ci==1 && count<k/2
            score_i=1;
        else
            score_i=0;
        end
        %add score to Fit_S%
        Fit_S=Fit_S+score_i;
    end
end

