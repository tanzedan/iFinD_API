from iFinDPy import *
iFinD.FT_iFinDLogin("ifind_e001","ifinde001")
price_out=iFinD.FTQuerySyn_RealtimeQuotes('600000.SH','new','pricetype:1')
price_out[0].get("result")
print price_out[0].get("result")