clc
fprintf('Muhamad Danil\n');
fprintf('E1E1 17 040\n');

a=0;
b=0;
k=0;
l=0;

rule=0;
x=input('Jumlah Tampungan Teko/Jug A Sebanyak : ');
y=input('Jumlah Tampungan Teko/Jug B Sebanyak : ');
jugA=input('Jumlah Air Yang Ingin Dimasukkan Ke Dalam Teko/Jug A : ');
jugB=input('Jumlah Air Yang Ingin Dimasukkan Ke Dalam Teko/Jug B : ');
if x>=jugA && y>=jugB
    fprintf('Rule Waterjug logic \n');
    fprintf('1. isi tempat jug A\n');
    fprintf('2. isi tempat jug B\n');
    fprintf('3. Tuang sebagian air keluar dari teko A\n');
    fprintf('4. Tuang sebagian air keluar dari teko B\n');
    fprintf('5. Kosongkan teko A dengan membuang airnya ke tanah\n');
    fprintf('6. Kosongkan teko B dengan membuang airnya ke tanah\n');
    fprintf('7. Tuangkan air dari teko B ke teko A sampai teko A penuh\n');
    fprintf('8. Tuangkan air dari teko A ke teko B sampai teko B penuh\n');
    fprintf('9. Tuangkan seluruh air dari teko B ke teko A\n');
    fprintf('10. Tuangkan seluruh air dari teko A ke teko B\n');
    fprintf('11. Tuangkan 2L air dari Teko B ke Teko A\n');
    fprintf('12. Kosongkan 2L air dari Teko A dengan membuang airnya ke tanah\n');
    disp('13. Kosongkan 2L air dari Teko 1 dengan membuang airnya ke tanah');
    fprintf('Rule yang akan digunakan yaitu : 2,7,2,7\n')
    while k~=jugA || l~=jugB  
        rule=input('masukkan rule yang digunakan :');
            if rule==1
                disp('rule 1. isi tempat jug A');
                disp('kondisi saat ini');
                a=x;
                b=0;
                m=a+k;
                if  m<=x
                    k=a-k;
                    l=l+b;
                else
                    k=a;
                   
                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==2
                disp('rule 2. isi tempat jug B sebanyak');
                a=0;
                b=y;
                m=b+l;
                if  m<=y
                    k=a+k;
                    l=b-l;

                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==3
                disp('rule 3. Tuang sebagian air keluar dari teko A');
                a=k;
                b=l; 
                k=a-a/2;
                l=b;
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==4
                disp('rule 4. Tuang sebagian air keluar dari teko B');
                a=k;
                b=l;
                k=a;
                l=b-b/2;
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==5
                disp('rule 5. Kosongkan teko A dengan membuang airnya ke tanah');
                a=k;
                b=l;
                k=a*0;
                l=b;
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==6
                disp('rule 6. Kosongkan teko B dengan membuang airnya ke tanah');
                a=k;
                b=l;
                k=a;
                l=b*0;
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==7
                disp('rule 7. Tuangkan air dari teko B ke teko A sampai teko A penuh');
                a=k;
                b=l;
                z=x-y;
                m=a+l;
                if  m<=x
                    k=a+l;
                    l=b-l;
                else
                    k=a+z;
                    l=b-z;
                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==8
                disp('rule 8. Tuangkan air dari teko A ke teko B sampai teko B penuh');
                a=k;
                b=l;
                z=x-y;
                m=b+k;
                if  m<=y
                    l=b+k;
                    k=a-k;
                else
                    l=a-z;
                    k=b+z;
                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==9
                disp('rule 9. Tuangkan seluruh air dari teko B ke teko A');
                a=k;
                b=l;
                z=x-y;
                m=a+l;
                if  m<=x
                    k=a+l;
                    l=b-l;
                else
                    k=a+z;
                    l=b-b;
                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==10
                disp('rule 10. Tuangkan seluruh air dari teko A ke teko B');
                a=k;
                b=l;
                z=x-y;
                m=b+k;
                if  m<=y
                    l=k+b;
                    k=a-k;
                else
                    k=a-a;
                    l=a-z;
                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==11
                disp('rule 11. Tuangkan 2L air dari Teko B ke Teko A');
                a=k;
                b=l;
                z=x-y;
                m=b+k;
                if  m<=l
                    l=b-2;
                    k=a+2;
                else
                    k=a;
                    l=b-2;
                end
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==12
                disp('rule 12. Kosongkan 2L air dari Teko A dengan membuang airnya ke tanah');
                a=k;
                b=l;
                k=a-2;
                l=b;
                disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            elseif rule==13
                 disp('rule 13. Kosongkan 1L air dari Teko B dengan membuang airnya ke tanah');
                 k=k;
                 l=l-1;
                 disp('Isi air pada jug A');
                disp(k);
                disp('Isi air pada jug B');
                disp(l);
            else
                disp('Maaf Tidak Ada Rule Seperti itu. . .');
                break
            end
            k;
            l;
           
    end
    if rule==1 || rule==2 || rule==3 || rule==4 || rule==5 || rule==6 || rule==7 || rule==8 || rule==9 || rule==10 || rule==11 || rule==12 || rule==13
        disp('Selamat Anda mendapatkan rulenya');
        fprintf('Rulenya yaitu : 2,7,2,7\n')
    end
else
    disp('Jumlah Air yang dimasukkan harus lebih kecil atau sama dengan Jumlah air pada tampungan Teko');
end
