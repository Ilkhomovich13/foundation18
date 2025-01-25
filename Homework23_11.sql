--create database Homework23_11

----------------------DIFFERENCE--------------------------

--Bu funksiya ikki satrning tovushli ifodasi o‘xshashligini (fonetik yaqinligini) solishtiradi va 0 dan 4 gacha bo‘lgan qiymat qaytaradi:

--0 — mutlaqo o‘xshash emas.

--4 — to‘liq o‘xshash.

--select DIFFERENCE('Timur', 'Temur'); -- 4 qaytaradi (tovushli o‘xshashlik yuqori)

--select DIFFERENCE('Timur', 'Abdulalim'); -- 0 qaytaradi (o‘xshash emas)

----------------------FORMAT------------------------------

--Bu funksiya qiymatlarni o‘zgartirish va kerakli formatda qaytarish uchun ishlatiladi (masalan, sana, raqamlarni formatlash).

--select FORMAT(12345.6789, 'N2'); -- 12,345.68 qaytaradi

--select FORMAT(GETDATE(), 'yyyy-MM-dd'); -- bugungi sanani '2025-01-25' kabi qaytaradi

---------------------QUOTENAME-------------------------------

--Bu funksiya satrni qavslar ([]) yoki boshqa belgilarga o‘rab beradi. Bu odatda SQL identifikatorlarini xavfsiz ishlatishda foydali.

--print QUOTENAME('MyColumn'); -- [MyColumn] qaytaradi, (messagesda)

--select QUOTENAME('MyColumn', '"'); -- "MyColumn" qaytaradi

-------------------SOUNDEX-----------------------------------

--Bu funnksiya satrni fonetik kodga aylantiradi. Bunda bir xil tovushlanadigan so'zlar birxil kod bilan ifodalanadi.

--select SOUNDEX('Timur'); -- T560 qaytaradi

--select SOUNDEX('Temur'); -- T560 qaytaradi

-------------------TRANSLATE-----------------------------------

--Bu funksiya matndagi belgilarning bir necha o‘zgarishlarini amalga oshiradi. Har bir belgini boshqa belgi bilan almashtiradi.

--select TRANSLATE('123-456-7890', '123', 'ABC'); -- 'ABC-456-7890' qaytaradi
