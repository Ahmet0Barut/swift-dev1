import UIKit


// soru 1:parametre olarak girilen kilometreyi mile dönüştürdükten sonra geri döndüren bir metod yazınız (Mile = Km x 0.621)

class dönüşümHesapla {
    func kmToMiles(km: Double) -> Double {
        return km * 0.621 }
}

    let hesapla = dönüşümHesapla()
    let sonuc   = hesapla.kmToMiles(km: 2.5)
        print("dönüşüm sonucu: \(sonuc)")
    
    
// soru 2:kenarları parametre olarak girilen ve geri döndüren dikdörtgenin alanını hesaplayan bir metod yazınız

class dikdörtgen{
    func alanHesapla(kisaK: Int, uzunK: Int) -> Int {
        return kisaK * uzunK
    }
}

let dikdörtgenAlanHesabı = dikdörtgen()
let alanHesabi           = dikdörtgenAlanHesabı.alanHesapla(kisaK: 7, uzunK: 24)
print("dikdörtgen alanı:\(alanHesabi)")


// soru 3:parametre olarak girilen sayının faktoriyel değerini hesaplayıp geri döndüren metodu yazınız

class faktöriyel1{
    func faktoriyelHesapla(n: Int) -> Int {
        if n == 0 || n == 1 {
            return 1
        }
        
        var islemSonucu = 1
        var i = 1
        
        while i <= n {
            islemSonucu *= i
            i += 1
        }
        
        return islemSonucu
    
    }
}

let faktöriyel  = faktöriyel1()
let islemSonucu = faktöriyel.faktoriyelHesapla(n: 4)
print("faktöriyel Hesabı: \(islemSonucu)")


// soru 4:parametre olarak girilen kelime içinde kaç tane e harfi olduğunu gösteren metod yazınız


class Harf {
    func eHarfiSayisi(kelime: String) -> Int {
        return kelime.lowercased().filter { $0 == "e" }.count
    }
}

let harfSayisi  = Harf()
let eHarfSayisi = harfSayisi.eHarfiSayisi(kelime: "Ahmet")
print("Girilen kelimedeki e/E harf sayısı: \(eHarfSayisi)")


// soru 5:parametre olarak girilen kenar sayısına göre her bir iç açıyı hesaplayıp sonucu geri getiren methodu yazın. iç açılar toplamı = ((Kenar sayısı - 2)*180)/kenar sayısı)

class kenar{
    func icAcıHesapla(kenarSayisi: Int) -> Double {
        guard kenarSayisi >= 3 else {
            print("Bir çokgen en az 3 kenara sahip olmalıdır.")
            return 0.0
        }
        let icAcı   = Double((kenarSayisi - 2) * 180) / Double(kenarSayisi)
        
        return icAcı
    }
    let kenarSayisi = 3
    let icAci       = icAci(kenarSayisi: Int) -> Int {
    print("Kenar sayısı \(kenarSayisi) olan bir çokgenin her bir iç açısı: \(icAci) derece")
}



// soru 6:parametre olarak girilen gün sayısına göre maaş hesabı yapan ve elde edilen değeri döndüren methodu yazınız. 1 günde 8 saat çalışabilir, çalışma saat ücreti; 40 TL, mesai saati ücreti; 80 TL, 150 saat üzeri mesai sayılır

class MaasHesaplama{
func maasHesapla(gunSayisi: Int) -> Double {
let saatUcretiNormal    = 40.0
let saatUcretiMesai     = 80.0
let normalSaatSiniri    = 150
let gunlukCalismaSaati  = 8
let toplamCalismaSaati  = gunSayisi * gunlukCalismaSaati
            
            
let normalCalismaSaati  = min(toplamCalismaSaati, normalSaatSiniri)
let mesaiSaati = max(0, toplamCalismaSaati - normalSaatSiniri)
            
            
let normalCalismaUcreti = Double(normalCalismaSaati) * saatUcretiNormal
let mesaiUcreti         = Double(mesaiSaati) * saatUcretiMesai
            
            
let toplamMaas          = normalCalismaUcreti + mesaiUcreti
            
return toplamMaas
}
        
        
let maasHesaplama       = MaasHesaplama(calismaSaatlikUcret: 40.0, mesaiSaatlikUcret: 80.0, maksimumMesaiCalismasi: 150, hesaplananCalismaSaati:350){
let hesaplananGünSayisi = 23
let maas                = maasHesaplama.maasHesapla(hesaplananGünSayisi: hesaplananGünSayisi)
        
print("Toplam maaş: \(maas) TL")
}
                            

//soru 7:parametre olarak girilen otopark süresine göre otopark ücreti hesaplayarak geri döndüren methodu yazınız. 1 saat ücreti 50 TL, 1 saat aşımından sonra her saat için 10 TL'dir
                                                    
func otoparkUcretiHesapla(saat: Int) -> Int {
let ilkSaatUcreti = 50
let ekSaatUcreti  = 10
var toplamUcret   = 0

if saat <= 1 {
toplamUcret   = ilkSaatUcreti
} else {
toplamUcret   = ilkSaatUcreti
let ekSaatler = saat - 1
toplamUcret += ekSaatler * ekSaatUcreti
}
return toplamUcret
}
let otoparkSüresi = 5
let ucret         = otoparkUcretiHesapla(saat:otoparkSüresi)
print("Otopark süresi \(otoparkSuresi) saat olan bir aracın ücreti: \(ucret) TL")
