% 本示例程序主要用于教程：matlab接口如何调用

% 载入插件
LoadFTDIActiveX
<<<<<<< HEAD
% 登录
FT_iFinDLogin(iFinDActive,'account','password') %change your account and password here.
% 获取数据，信息自动保存在stRTData中
FTQuerySyn_RealtimeQuotes(iFinDActive,'601918.SH','new;volume','pricetype:1')
% stRTData是一个结构体，找到结构体中的最新价即可展示。
stRTData.tables{1}.table.new{1}
=======
FT_iFinDLogin(iFinDActive,'account','password') %change your account and password here.
FTQuerySyn_RealtimeQuotes(iFinDActive,'601918.SH','new;volume','pricetype:1')
stRTData.tables{1}.table.new{1}
>>>>>>> origin/master
