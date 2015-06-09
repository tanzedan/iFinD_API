LoadFTDIActiveX
FT_iFinDLogin(iFinDActive,'account','password') %change your account and password here.
FTQuerySyn_RealtimeQuotes(iFinDActive,'601918.SH','new;volume','pricetype:1')
stRTData.tables{1}.table.new{1}
