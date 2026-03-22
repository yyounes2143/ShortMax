package com.ss.ttvideoengine.playermetrcis;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class DiagnoseResult implements IMetricsInfo {
    public int maxValue = 0;
    public int avgValue = 0;
    public int overCount = 0;

    @Override // com.ss.ttvideoengine.playermetrcis.IMetricsInfo
    public Map<String, Object> getMetricsInfo(String str) {
        HashMap hashMap = new HashMap();
        if (str.equals("pow")) {
            hashMap.put("avg_pow", Integer.valueOf(this.avgValue));
            hashMap.put("max_pow", Integer.valueOf(this.maxValue));
            int i10 = this.overCount;
            if (i10 > 0) {
                hashMap.put("over_pow", Integer.valueOf(i10));
            }
        } else if (str.equals("mem")) {
            hashMap.put("avg_mem", Integer.valueOf(this.avgValue));
            hashMap.put("max_mem", Integer.valueOf(this.maxValue));
            int i11 = this.overCount;
            if (i11 > 0) {
                hashMap.put("over_mem", Integer.valueOf(i11));
            }
        } else if (str.equals("cpu")) {
            hashMap.put("avg_cpu", Integer.valueOf(this.avgValue));
            hashMap.put("max_cpu", Integer.valueOf(this.maxValue));
            int i12 = this.overCount;
            if (i12 > 0) {
                hashMap.put("over_cpu", Integer.valueOf(i12));
            }
        }
        return hashMap;
    }

    public void reset() {
        this.maxValue = 0;
        this.avgValue = 0;
        this.overCount = 0;
    }
}
