clc;
a=imread('IMG_20180821_214944.jpg');
[h,w,c]=size(a);
imshow(a);
l1 = int16(h./6);
l2 = int16(h./2);
l3 = int16(h.*0.833);
b1 = int16(w./6);
b2 = int16(w./2);
b3 = int16(w.*0.833);
l = [l1,l2,l3];
b = [b1,b2,b3];
for i=1:1:3  
  for j=1:1:3
    if (a(l(i),b(j),1)>=130)&&(a(l(i),b(j),1)<=255)&&(a(l(i),b(j),2)>=80)&&(a(l(i),b(j),2)<=165)&&(a(l(i),b(j),3)>=0)&&(a(l(i),b(j),3)<=60)
      c(i,j)= char('O');
    end
    if (a(l(i),b(j),1)>=120)&&(a(l(i),b(j),1)<=255)&&(a(l(i),b(j),2)>=170)&&(a(l(i),b(j),2)<=255)&&(a(l(i),b(j),3)>=0)&&(a(l(i),b(j),3)<=75)
      c(i,j)= char('Y');
    end
    if (a(l(i),b(j),1)>=140)&&(a(l(i),b(j),1)<=255)&&(a(l(i),b(j),2)>=0)&&(a(l(i),b(j),2)<=85)&&(a(l(i),b(j),3)>=0)&&(a(l(i),b(j),3)<=85)
      c(i,j)= char('R');
    end
    if (a(l(i),b(j),1)>=0)&&(a(l(i),b(j),1)<=90)&&(a(l(i),b(j),2)>=0)&&(a(l(i),b(j),2)<=135)&&(a(l(i),b(j),3)>=120)&&(a(l(i),b(j),3)<=255)
      c(i,j)= char('B');
    end
    if (a(l(i),b(j),1)>=170)&&(a(l(i),b(j),1)<=255)&&(a(l(i),b(j),2)>=200)&&(a(l(i),b(j),2)<=255)&&(a(l(i),b(j),3)>=200)&&(a(l(i),b(j),3)<=255) 
      c(i,j)= char('W');
    end
    if (a(l(i),b(j),1)>=0)&&(a(l(i),b(j),1)<=70)&&(a(l(i),b(j),2)>=100)&&(a(l(i),b(j),2)<=255)&&(a(l(i),b(j),3)>=0)&&(a(l(i),b(j),3)<=120)
      c(i,j)= char('G');
    end
  end
end