function Initialize()
    -- 初始化空变量
    cpuName = ""
end

function Update()
    -- 获取 MeasureCPUName 的值
    local cpuInfo = SKIN:GetMeasure("MeasureGetGPUName"):GetStringValue()

    -- 使用正则表达式提取 CPU [#0]: 后的文字
    cpuName = cpuInfo:match("GPU %[#0%]: (.+)")
    return cpuName or "Unknown"
end
