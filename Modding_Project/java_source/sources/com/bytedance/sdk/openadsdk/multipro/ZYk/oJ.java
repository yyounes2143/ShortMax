package com.bytedance.sdk.openadsdk.multipro.ZYk;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class oJ {
    public long Pfn;
    public boolean ZYk;

    /* renamed from: ba  reason: collision with root package name */
    public long f13372ba;
    public long cFZ;
    public boolean ex;
    public boolean oJ;
    public boolean tB;

    /* renamed from: com.bytedance.sdk.openadsdk.multipro.ZYk.oJ$oJ  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0236oJ {
        oJ ba();
    }

    public oJ ZYk(boolean z10) {
        this.oJ = z10;
        return this;
    }

    public oJ ex(boolean z10) {
        this.tB = z10;
        return this;
    }

    public oJ oJ(boolean z10) {
        this.ex = z10;
        return this;
    }

    public oJ tB(boolean z10) {
        this.ZYk = z10;
        return this;
    }

    public oJ ZYk(long j10) {
        this.f13372ba = j10;
        return this;
    }

    public oJ oJ(long j10) {
        this.Pfn = j10;
        return this;
    }

    public oJ tB(long j10) {
        this.cFZ = j10;
        return this;
    }

    public JSONObject oJ() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("isCompleted", this.oJ);
            jSONObject.put("isFromVideoDetailPage", this.ZYk);
            jSONObject.put("isFromDetailPage", this.tB);
            jSONObject.put("duration", this.Pfn);
            jSONObject.put("totalPlayDuration", this.f13372ba);
            jSONObject.put("currentPlayPosition", this.cFZ);
            jSONObject.put("isAutoPlay", this.ex);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public static oJ oJ(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        oJ oJVar = new oJ();
        oJVar.ZYk(jSONObject.optBoolean("isCompleted"));
        oJVar.tB(jSONObject.optBoolean("isFromVideoDetailPage"));
        oJVar.ex(jSONObject.optBoolean("isFromDetailPage"));
        oJVar.oJ(jSONObject.optLong("duration"));
        oJVar.ZYk(jSONObject.optLong("totalPlayDuration"));
        oJVar.tB(jSONObject.optLong("currentPlayPosition"));
        oJVar.oJ(jSONObject.optBoolean("isAutoPlay"));
        return oJVar;
    }
}
