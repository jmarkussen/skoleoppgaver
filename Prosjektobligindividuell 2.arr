include shared-gdrive(
"dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")

include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
  load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
end

#gjør teksten om til tall i energi-kolonnen

distance-travelled-per-day = 48
distance-per-unit-of-fuel = 8
energy-per-unit-of-fuel = 10

#formel for å regne ut energiforbruk
energy-per-day = ( distance-travelled-per-day / 
                            distance-per-unit-of-fuel ) * 
                                        energy-per-unit-of-fuel


#funksjon for å gjøre string til numbers
fun energi-to-number(str :: String) -> Number:
  doc: "If s is not a numeric string, default to 0."
  cases(Option) string-to-number(str):
    | some(a) => a
    | none => energy-per-day
  end
where:
  energi-to-number("") is energy-per-day
energi-to-number("48") is 48
end

energi-tabell = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)


#Funksjon for å regne ut summen en gjennomsnittlig innbygger sitt forbruk, inkl. bil.

summert = sum(energi-tabell, "energi")

fun summen():
  block:
    average = summert + energy-per-day
    print("Dette er det en vanlig innbygger bruker (inkl.bil)")
    average
    end
end

summen()




bar-chart(energi-tabell, "komponent", "energi")
 

      


energi-tabell
