-- 寻找几个sku检验最终的结果
-- 在 fdc_id:7 \ rdc_id:3 上面的表现

-- 3295802、1226778【小于1】
-- 1459013、985258【大于1】
-- 1105543、3429911【0】
-- 2751901、4327870【0和其他】
--  '2017-04-14'


-- 检查 表1
select
    *
from
    app.app_ioa_iaa_skudc
where
    sku_id in ('3295802', '1226778', '1459013', '985258', '1105543', '3429911', '2751901', '4327870')
    and dt = '2017-04-14'

-- 检查 表2
select
    *
from
    app.app_ioa_iaa_stdpre
where
    sku_id in ('3295802', '1226778', '1459013', '985258', '1105543', '3429911', '2751901', '4327870')
    and dt = '2017-04-14'

-- 检查 表3
select
    *
from
    app.app_ioa_iaa_dayerr_tmp
where
    sku_id in ('3295802', '1226778', '1459013', '985258', '1105543', '3429911', '2751901', '4327870')
    and dp = '2017-04-14'

-- 检查 表4
select
    *
from
    app.app_ioa_iaa_dayerr
where
    sku_id in ('3295802', '1226778', '1459013', '985258', '1105543', '3429911', '2751901', '4327870')
    and dp = '2017-04-14'

-- 检查 表5
select
    *
from
    app.app_ioa_iaa_std
where
    sku_id in ('3295802', '1226778', '1459013', '985258', '1105543', '3429911', '2751901', '4327870')
    and dt = '2017-04-14'
