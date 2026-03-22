package com.bytedance.adsdk.ugeno.oJ;

import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class tB {
    private long Pfn;
    private long ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private oJ f11710ba;
    private String cFZ;
    private String ex;
    private int jFA = 1;
    private JSONObject kkU;
    private Map<String, TreeMap<Float, String>> oJ;

    /* renamed from: so  reason: collision with root package name */
    private String f11711so;
    private int tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public String ZYk;
        public String oJ;
    }

    public String Pfn() {
        return this.ex;
    }

    public Map<String, TreeMap<Float, String>> ZYk() {
        return this.oJ;
    }

    public long ba() {
        return this.Pfn;
    }

    public oJ cFZ() {
        return this.f11710ba;
    }

    public int ex() {
        return this.tB;
    }

    public String jFA() {
        return this.f11711so;
    }

    public int kkU() {
        return this.jFA;
    }

    public JSONObject oJ() {
        return this.kkU;
    }

    public String so() {
        return this.cFZ;
    }

    public long tB() {
        return this.ZYk;
    }

    public String toString() {
        return "AnimationModel{mKeyFramesMap=" + this.oJ + ", mDuration=" + this.ZYk + ", mPlayCount=" + this.tB + ", mPlayDirection=" + this.ex + ", mDelay=" + this.Pfn + ", mName=" + this.f11711so + ", mPlayState=" + this.jFA + ", mTransformOrigin='" + this.f11710ba + "', mTimingFunction='" + this.cFZ + "'}";
    }

    public void ZYk(long j10) {
        this.Pfn = j10;
    }

    public void oJ(JSONObject jSONObject) {
        this.kkU = jSONObject;
    }

    public void tB(String str) {
        this.f11711so = str;
    }

    public void ZYk(String str) {
        this.cFZ = str;
    }

    public void oJ(Map<String, TreeMap<Float, String>> map) {
        this.oJ = map;
    }

    public void ZYk(int i10) {
        this.jFA = i10;
    }

    public void oJ(long j10) {
        this.ZYk = j10;
    }

    public void oJ(int i10) {
        this.tB = i10;
    }

    public void oJ(String str) {
        this.ex = str;
    }

    public void oJ(oJ oJVar) {
        this.f11710ba = oJVar;
    }
}
