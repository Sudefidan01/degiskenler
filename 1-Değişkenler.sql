--De�i�kenler
--De�i�ken en basit tan�m� ile bir verinin saklanmas�nda kullan�lan yap�d�r
--De�i�kenler Sql sorgu dili i�erisinde 'Declare' ifadesi ile tan�mlan�r
--'Declare' ifadesinden sonra @ i�areti eklenerek de�i�ken ad� yaz�l�r ve sonra i�erisinde bar�nd�raca�� veri tipi belirtilir
--De�i�ken isminin �n�ne @ i�areti mutalaka eklemeniz gerekmektedir

--Syntax
--Declare @<degiskenAdi> <veriTipi>

--�rnek
--Birka� de�i�ken tan�mlamas� yapal�m
Declare @sayi int
declare @ad nvarchar(25)
declare @soyad nvarchar(25)

--Tek bir sat�rda birden fazla de�i�ken tan�mlamas� yapal�m
declare @n1 int,@n2 int ,@ortalama float

--De�i�kenlere De�er Atama
--'Set' veya  'Select' ifadesi kullan�larak de�i�kenlere de�er atamas� yap�l�r

--Set �fade �le De�i�kenelere De�er Atama
--Syntax
--Set @<degiskenAdi> = <deger>

--�rnek
--n1 , n2 de�i�kenlerine de�er atamas� yapal�m
set @n1 = 50
set @n2 = 75

--Print()
--Sql sorgu dili i�erisinde ekrana bir de�er yazd�rmak i�in print() fonksiyonu kullan�r�z
--() parantez i�erisine bir de�er veya de�i�ken belirtti�imizde o de�eri ekrana yazd�r�r

Print(@n1)
print(@n2)
set @ortalama = (@n1+@n2)/2
print (@ortalama)

--Select �fadesi ile De�i�kene De�er Atama
--Syntax
--Select @<degiskenAdi> = <deger> (kolon)
use NORTHWND
go	
--�rnek
--En pahal� �r�n�n fiyat�n� @EnPahali de�i�keni i�erisine aktar�p ekrana yazd�ral�m
declare @EnPahali money
select
	top 1 @EnPahali=UnitPrice
from Products
order by UnitPrice desc

-- print(@EnPahali)

select * from Products where  UnitPrice=@EnPahali