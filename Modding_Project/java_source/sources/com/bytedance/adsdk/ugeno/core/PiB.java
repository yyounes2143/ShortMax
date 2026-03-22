package com.bytedance.adsdk.ugeno.core;

import org.json.JSONObject;
/* loaded from: classes3.dex */
public class PiB {
    private PiB Pfn;
    private int ZYk;
    private PiB ex;
    private com.bytedance.adsdk.ugeno.ZYk.tB oJ;
    private JSONObject tB;

    public int ZYk() {
        return this.ZYk;
    }

    public PiB ex() {
        return this.ex;
    }

    public com.bytedance.adsdk.ugeno.ZYk.tB oJ() {
        return this.oJ;
    }

    public JSONObject tB() {
        return this.tB;
    }

    public String toString() {
        return "UGenEvent{mWidget=" + this.oJ + ", mEventType=" + this.ZYk + ", mEvent=" + this.tB + '}';
    }

    public void ZYk(PiB piB) {
        this.Pfn = piB;
    }

    public void oJ(com.bytedance.adsdk.ugeno.ZYk.tB tBVar) {
        this.oJ = tBVar;
    }

    public void oJ(int i10) {
        this.ZYk = i10;
    }

    public void oJ(JSONObject jSONObject) {
        this.tB = jSONObject;
    }

    public void oJ(PiB piB) {
        this.ex = piB;
    }
}
