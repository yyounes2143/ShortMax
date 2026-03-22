package com.mbridge.msdk.videocommon.entity;

import com.bytedance.applog.aggregation.MetricsSQLiteCacheKt;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* compiled from: AdUnitInfo.java */
/* loaded from: classes6.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private int f31657a;

    /* renamed from: b  reason: collision with root package name */
    private int f31658b;

    /* renamed from: c  reason: collision with root package name */
    private a f31659c;

    public b(int i10, int i11, a aVar) {
        this.f31657a = i10;
        this.f31658b = i11;
        this.f31659c = aVar;
    }

    public int a() {
        return this.f31657a;
    }

    public int b() {
        return this.f31658b;
    }

    public static List<b> a(JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() > 0) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                try {
                    JSONObject optJSONObject = jSONArray.optJSONObject(i10);
                    int optInt = optJSONObject.optInt("id");
                    int optInt2 = optJSONObject.optInt("timeout");
                    JSONObject optJSONObject2 = optJSONObject.optJSONObject(MetricsSQLiteCacheKt.METRICS_PARAMS);
                    arrayList.add(new b(optInt, optInt2, optJSONObject2 != null ? a.a(optJSONObject2) : null));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            return arrayList;
        }
        return null;
    }
}
