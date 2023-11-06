use context essentials2021
#a) Hentet  in data fra Google docs git av oppdragtgiver
include shared-gdrive(
"dcic-2021",
"1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data-tab =
load-table: komponent, energi
    source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
      #b) med hjelp av sanetize kan vi gjøre om kolonnedata for kolonnen energi til           data av typen String. 
    sanitize energi using string-sanitizer   
end


#d) brukt tall fra David MacKay FRS: : Contents. (2015). Withouthotair.com. https://withouthotair.com/
distance-travelled-per-day = 50
distance-per-unit-of-fuel= 12
energy-per-unit-of-fuel=10
energy-per-day = (distance-travelled-per-day / distance-per-unit-of-fuel) * energy-per-unit-of-fuel

#c) her fortsetter vi på funksjonen om sanitize som gjør om string til nummer.
fun energi-to-number(str :: String) -> Number:
  cases(Option) string-to-number(str):
    |some(a) => a
    |none => energy-per-day
  end
where:
  energi-to-number("") is energy-per-day
  energi-to-number("48")is 48
  energi-to-number("0")is 0
end

tab-med-verdi = transform-column(kWh-wealthy-consumer-data-tab, "energi",
  energi-to-number)
kWh-wealthy-consumer-data-tab
tab-med-verdi

#d)
sum(tab-med-verdi, "energi")

#e) bruker bar chart får å få en visualisering av tabellen. Hadde fra før endret funksjone "energi-to-number" etter "d oppgaven" ved å bytte ut "0" verdien til "energy-per-day" og kom derfor rett til svaret. 
bar-chart(tab-med-verdi, "komponent", "energi")

