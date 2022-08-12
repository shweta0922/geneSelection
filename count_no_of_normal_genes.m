function count=count_no_of_normal_genes(k,d,maxN,m)

    count=0;
    temp=d;
    sort(temp);
    kth_element=temp(1,k);
    for i=1:m-1
        if d(1,i)<=kth_element
            if d(2,i)<=maxN
                count=count+1;
            end
        end
    end



end
