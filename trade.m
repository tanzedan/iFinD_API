% 本示例程序主要用于教程：matlab接口如何调用

%% 载入插件
LoadFTDIActiveX
%% 登录
FT_iFinDLogin(iFinDActive,'account','password') %change your account and password here.

%%设置资金账号
Trade_acc = '资金账号' 			%将资金账号改成你要交易的资金账号
Trade_pasw = '资金账号密码' 	%将资金账号改成你要交易的资金账号密码
Trade_broker = '券商' 			%将券商改为要登录的券商
Trade_deparment = '营业部' 		%将营业部改为要登录的营业部
Trade_type = 类型 				%数字类型，0为个人账户，1为基金账户
Trade_com_pasw = '通讯密码' 	%券商的通讯密码

% 登录资金账号
iFinDActive.QuantLogin(Trade_acc,Trade_pasw,Trade_broker,Trade_deparment,Trade_type,Trade_com_pasw) 

%% 查询函数
iFinDActive.QuantQueryData(Trade_acc,0) %后方入参如下：0-查资金 1-查持仓 2-查委托,只支持当天 3-查询历史成交,30天内 4-查询当日成交

%% 交易函数
sMarket = 'SHA'; 		% SHA：上海A股。 SZA：深证A股。
nType = 0; 				% 0-买入 1-卖出
sOrderQty = 100; 		%委托数量
sOrderPrice = 13.5;		%委托价格
nMarketTacticID = 1;	%委托策略：
							%如果sMarket=SHA，
							%1-	限价委托 
							%2-	最优五档即时成交剩余撤销申报 
							%3 - 最优五档即时成交剩余转限价申报；
							%如果sMarket=SZA，
							%1-	限价委托 
							%2-	对手方最优价格申报 
							%3-	本方最优价格申报
							%4-	即时成交剩余撤销申报
							%5-	最优五档即时成交剩余撤销申报 
							%6-	全额成交或撤销申报  

iFinDActive.QuantChangeTrade(Trade_acc,'thscode',sMarket,nType,sOrderQty,sOrderPrice,nMarketTacticID) %thscode 为股票代码

%% 撤单
szClOrdID = '合同编号' %合同编号可以通过查询得到，字段名为szClOrdID
iFinDActive.QuantStockCancel(Trade_acc,szClOrdID)

%% 资金账号登出
iFinDActive.QuantLogout(Trade_acc)

%% iFinD登出
%FT_iFinDLogout()