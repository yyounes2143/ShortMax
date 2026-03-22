package com.bytedance.adsdk.ZYk.tB;

import android.graphics.PointF;
/* loaded from: classes3.dex */
public class ZYk {
    public PointF BTZ;
    public int Pfn;
    public PointF PiB;
    public String ZYk;

    /* renamed from: ba  reason: collision with root package name */
    public float f11558ba;
    public float cFZ;
    public boolean dLZ;
    public oJ ex;
    public int jFA;
    public float kkU;
    public String oJ;

    /* renamed from: so  reason: collision with root package name */
    public int f11559so;
    public float tB;

    /* loaded from: classes3.dex */
    public enum oJ {
        LEFT_ALIGN,
        RIGHT_ALIGN,
        CENTER
    }

    public ZYk(String str, String str2, float f10, oJ oJVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        oJ(str, str2, f10, oJVar, i10, f11, f12, i11, i12, f13, z10, pointF, pointF2);
    }

    public int hashCode() {
        int hashCode = (((((int) ((((this.oJ.hashCode() * 31) + this.ZYk.hashCode()) * 31) + this.tB)) * 31) + this.ex.ordinal()) * 31) + this.Pfn;
        long floatToRawIntBits = Float.floatToRawIntBits(this.f11558ba);
        return (((hashCode * 31) + ((int) (floatToRawIntBits ^ (floatToRawIntBits >>> 32)))) * 31) + this.f11559so;
    }

    public void oJ(String str, String str2, float f10, oJ oJVar, int i10, float f11, float f12, int i11, int i12, float f13, boolean z10, PointF pointF, PointF pointF2) {
        this.oJ = str;
        this.ZYk = str2;
        this.tB = f10;
        this.ex = oJVar;
        this.Pfn = i10;
        this.f11558ba = f11;
        this.cFZ = f12;
        this.f11559so = i11;
        this.jFA = i12;
        this.kkU = f13;
        this.dLZ = z10;
        this.BTZ = pointF;
        this.PiB = pointF2;
    }

    public ZYk() {
    }
}
