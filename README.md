# Basit Sayaç Uygulaması (MVVM - Programmatic UI)

MVVM mimarisiyle geliştirilmiş, programmatic UI (kodla arayüz) kullanan basit bir sayaç uygulaması. Sayacı artırın, azaltın veya sıfırlayın.

## İçindekiler

- [Genel Bakış](#genel-bakış)
- [Teknolojiler](#teknolojiler)
- [Mimari](#mimari)
- [Kurulum](#kurulum)
- [Kullanım](#kullanım)
- [Yazar](#yazar)

## Genel Bakış

Bu uygulama, kullanıcıların basit bir sayacı kolayca yönetebilmelerini sağlar. Ekranda görüntülenen sayıyı artırabilir, azaltabilir ve istedikleri zaman sıfırlayabilirler. Temel olarak, sayısal bir değeri takip etmek için pratik ve minimalist bir araç sunar.

## Teknolojiler

* **Dil:** Swift
* **UI:** UIKit (programmatic olarak oluşturuldu)
* **Mimari:** MVVM

## Mimari

Bu uygulama, kullanıcı arayüzünü (View) veri ve iş mantığından (Model) ayırmak ve aralarındaki iletişimi bir aracı (ViewModel) üzerinden sağlamak amacıyla Model-View-ViewModel (MVVM) tasarım deseni kullanılarak geliştirilmiştir. Bu yaklaşım, kodun daha düzenli, test edilebilir ve sürdürülebilir olmasına yardımcı olur.

## Kurulum

Uygulamayı yerel makinenizde çalıştırmak için aşağıdaki adımları izleyin:

1.  Bu GitHub deposunu klonlayın:
    ```bash
    git clone [depo URL'niz buraya]
    ```
2.  Xcode'u açın ve proje dosyasını (`.xcodeproj` veya `.xcworkspace`) seçin.
3.  Uygulamayı bir simülatörde veya gerçek bir cihazda çalıştırın.

## Kullanım

Uygulama başlatıldığında, ekranın ortasında mevcut sayacı gösteren büyük bir sayı etiketi ve altında üç adet buton bulunur:

* **'+' Butonu:** Mevcut sayıyı bir artırır.
* **'-' Butonu:** Mevcut sayıyı bir azaltır.
* **'Clear' Butonu:** Mevcut sayıyı sıfıra döndürür.

Bu butonlara dokunarak sayacın değerini kolayca değiştirebilirsiniz.
