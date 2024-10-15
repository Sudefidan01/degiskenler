--Deðiþkenler
--Deðiþken en basit tanýmý ile bir verinin saklanmasýnda kullanýlan yapýdýr
--Deðiþkenler Sql sorgu dili içerisinde 'Declare' ifadesi ile tanýmlanýr
--'Declare' ifadesinden sonra @ iþareti eklenerek deðiþken adý yazýlýr ve sonra içerisinde barýndýracaðý veri tipi belirtilir
--Deðiþken isminin önüne @ iþareti mutalaka eklemeniz gerekmektedir

--Syntax
--Declare @<degiskenAdi> <veriTipi>

--Örnek
--Birkaç deðiþken tanýmlamasý yapalým
Declare @sayi int
declare @ad nvarchar(25)
declare @soyad nvarchar(25)

--Tek bir satýrda birden fazla deðiþken tanýmlamasý yapalým
declare @n1 int,@n2 int ,@ortalama float

--Deðiþkenlere Deðer Atama
--'Set' veya  'Select' ifadesi kullanýlarak deðiþkenlere deðer atamasý yapýlýr

--Set Ýfade Ýle Deðiþkenelere Deðer Atama
--Syntax
--Set @<degiskenAdi> = <deger>

--Örnek
--n1 , n2 deðiþkenlerine deðer atamasý yapalým
set @n1 = 50
set @n2 = 75

--Print()
--Sql sorgu dili içerisinde ekrana bir deðer yazdýrmak için print() fonksiyonu kullanýrýz
--() parantez içerisine bir deðer veya deðiþken belirttiðimizde o deðeri ekrana yazdýrýr

Print(@n1)
print(@n2)
set @ortalama = (@n1+@n2)/2
print (@ortalama)

--Select Ýfadesi ile Deðiþkene Deðer Atama
--Syntax
--Select @<degiskenAdi> = <deger> (kolon)
use NORTHWND
go	
--Örnek
--En pahalý ürünün fiyatýný @EnPahali deðiþkeni içerisine aktarýp ekrana yazdýralým
declare @EnPahali money
select
	top 1 @EnPahali=UnitPrice
from Products
order by UnitPrice desc

-- print(@EnPahali)

select * from Products where  UnitPrice=@EnPahali