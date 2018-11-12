classdef FrameErrorQueue<handle
    properties
        
           %validate mode variable
       
       subswallow_user1=zeros(3,2);
       subswallow_user2=zeros(3,2);
       valueStorage_user1=zeros(33,3);
       valueStorage_user2=zeros(33,3);
       ErrorQueue=zeros(99,2);  % 33,3  33 is the length of total possible erroroneous property
                                % first coloumn stores the index of that
                                % property
                                %second index stores the subswallow index of that
                                %property
       currentErrorPointer = 1;
       hasError=0;
    end
    
end