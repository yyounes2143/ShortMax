package com.bytedance.sdk.openadsdk.ex.oJ;

import com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class ZYk {
    public int ex;
    public AtomicInteger oJ = new AtomicInteger(0);
    public AtomicInteger ZYk = new AtomicInteger(0);
    public AtomicLong tB = new AtomicLong(0);
    public AtomicInteger Pfn = new AtomicInteger(0);

    /* renamed from: ba  reason: collision with root package name */
    public Map<Integer, Integer> f13351ba = new HashMap();
    public AtomicBoolean cFZ = new AtomicBoolean(false);

    public ZYk(int i10) {
        this.ex = i10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject ZYk() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("success", this.oJ.get());
            jSONObject.put("fail", this.ZYk.get());
            jSONObject.put("type", this.ex);
            jSONObject.put(CrashHianalyticsData.TIME, this.Pfn.get());
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject oJ() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("success", this.oJ.get());
            jSONObject.put("fail", this.ZYk.get());
            jSONObject.put("type", this.ex);
            jSONObject.put("duration", this.tB.get() / this.oJ.get());
            JSONObject jSONObject2 = new JSONObject();
            if (this.f13351ba.size() > 0) {
                for (Map.Entry<Integer, Integer> entry : this.f13351ba.entrySet()) {
                    jSONObject2.put(String.valueOf(entry.getKey()), entry.getValue());
                }
            }
            jSONObject.put("fail_error_code", jSONObject2);
            return jSONObject;
        } catch (Exception unused) {
            return null;
        }
    }
}
