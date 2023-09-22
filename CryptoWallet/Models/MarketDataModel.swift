//
//  MarketDataModel.swift
//  CryptoWallet
//
//  Created by Andria Inasaridze on 12.09.23.
//

import Foundation

// JSON data:
/*
 URL: https://api.coingecko.com/api/v3/global

 Json response:
 {
 "data": {
   "active_cryptocurrencies": 9976,
   "upcoming_icos": 0,
   "ongoing_icos": 49,
   "ended_icos": 3376,
   "markets": 859,
   "total_market_cap": {
     "btc": 41331018.666801825,
     "eth": 673119569.0731896,
     "ltc": 17773425591.213676,
     "bch": 5493805534.408063,
     "bnb": 5081062380.479213,
     "eos": 1911245938393.2705,
     "xrp": 2260342263084.2007,
     "xlm": 8216194929043.926,
     "link": 179598025633.4997,
     "dot": 265425962049.49667,
     "yfi": 205713749.35238007,
     "usd": 1068456831462.3289,
     "aed": 3924495364802.7026,
     "ars": 373934248047859.44,
     "aud": 1662562636485.4727,
     "bdt": 117138418423967.42,
     "bhd": 402824252313.7691,
     "bmd": 1068456831462.3289,
     "brl": 5268561704397.549,
     "cad": 1450554089702.558,
     "chf": 952906430510.1696,
     "clp": 952796379456532,
     "cny": 7788836609994.057,
     "czk": 24522900658673.883,
     "dkk": 7433593945755.8125,
     "eur": 996472757813.0475,
     "gbp": 856798738520.1345,
     "hkd": 8366631353028.102,
     "huf": 384666397950558.2,
     "idr": 16408689353656036,
     "ils": 4055963635629.985,
     "inr": 88586077502047.98,
     "jpy": 156839419364453.8,
     "krw": 1419109408357991.2,
     "kwd": 329762105721.5439,
     "lkr": 344742484861323.8,
     "mmk": 2241358464805466.5,
     "mxn": 18484037138547.21,
     "myr": 4997172600749.299,
     "ngn": 801043344564426.9,
     "nok": 11397273896395.582,
     "nzd": 1809032041226.4858,
     "php": 60518109731646.53,
     "pkr": 317574710135195.75,
     "pln": 4661196350095.981,
     "rub": 101116070566033.92,
     "sar": 4007597800240.178,
     "sek": 11838908774655.387,
     "sgd": 1454717865974.767,
     "thb": 38074993417575.76,
     "try": 28729735741190.51,
     "twd": 34233891108468.684,
     "uah": 39410553772335.336,
     "vef": 106984582534.32292,
     "vnd": 25755260242552980,
     "zar": 20203792132307.2,
     "xdr": 808610266964.3512,
     "xag": 46376005494.29971,
     "xau": 556644640.0552447,
     "bits": 41331018666801.83,
     "sats": 4133101866680182.5
   },
   "total_volume": {
     "btc": 1962931.6845582617,
     "eth": 31968428.85199103,
     "ltc": 844112275.9975662,
     "bch": 260916989.22855458,
     "bnb": 241314602.43613294,
     "eos": 90770693064.69476,
     "xrp": 107350304668.82582,
     "xlm": 390211271653.9828,
     "link": 8529638667.8045225,
     "dot": 12605859899.354652,
     "yfi": 9769951.227391547,
     "usd": 50744158641.91476,
     "aed": 186385831899.68478,
     "ars": 17759237664862.73,
     "aud": 78959991357.32364,
     "bdt": 5563248146800.18,
     "bhd": 19131308970.38145,
     "bmd": 50744158641.91476,
     "brl": 250219497007.43903,
     "cad": 68891081678.8016,
     "chf": 45256330117.26746,
     "clp": 45251103468927.49,
     "cny": 369914767667.8288,
     "czk": 1164664705901.6326,
     "dkk": 353043248314.24835,
     "eur": 47325423185.89161,
     "gbp": 40691893047.4273,
     "hkd": 397355940057.41046,
     "huf": 18268939040898.676,
     "idr": 779296936618610.1,
     "ils": 192629646899.77917,
     "inr": 4207213466992.9053,
     "jpy": 7448765493541.837,
     "krw": 67397681242202.48,
     "kwd": 15661372658.288692,
     "lkr": 16372834940339.557,
     "mmk": 106448708232623.75,
     "mxn": 877861309209.6213,
     "myr": 237330429968.23468,
     "ngn": 38043905339623.836,
     "nok": 541290071487.9675,
     "nzd": 85916254344.7505,
     "php": 2874183093320.182,
     "pkr": 15082557382973.357,
     "pln": 221373929283.28513,
     "rub": 4802299704544.292,
     "sar": 190332611070.53555,
     "sek": 562264611276.8578,
     "sgd": 69088831665.02914,
     "thb": 1808293465283.9504,
     "try": 1364459681722.4436,
     "twd": 1625868214966.2666,
     "uah": 1871723156144.7566,
     "vef": 5081012604.814921,
     "vnd": 1223193088506156.8,
     "zar": 959537533890.7292,
     "xdr": 38403280748.518265,
     "xag": 2202532952.838373,
     "xau": 26436691.769264776,
     "bits": 1962931684558.2617,
     "sats": 196293168455826.16
   },
   "market_cap_percentage": {
     "btc": 47.13950352172049,
     "eth": 17.876817817468844,
     "usdt": 7.769125606347041,
     "bnb": 3.027828851880707,
     "usdc": 2.4393774552753036,
     "xrp": 2.348427445562463,
     "steth": 1.2819295678873985,
     "ada": 0.8126976826623743,
     "doge": 0.808508967833689,
     "sol": 0.7008886162805065
   },
   "market_cap_change_percentage_24h_usd": 0.2651409713083277,
   "updated_at": 1694513058
 }
}
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: {$0.key == "usd"}){
            return "$" + item.value.formattedWithAbbreviations()
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: {$0.key == "usd"}){
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: {$0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
