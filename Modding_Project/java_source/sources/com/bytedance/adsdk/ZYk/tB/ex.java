package com.bytedance.adsdk.ZYk.tB;

import com.bytedance.adsdk.ZYk.tB.ZYk.eZI;
import java.util.List;
/* loaded from: classes3.dex */
public class ex {
    private final String Pfn;
    private final char ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f11571ba;
    private final double ex;
    private final List<eZI> oJ;
    private final double tB;

    public ex(List<eZI> list, char c10, double d10, double d11, String str, String str2) {
        this.oJ = list;
        this.ZYk = c10;
        this.tB = d10;
        this.ex = d11;
        this.Pfn = str;
        this.f11571ba = str2;
    }

    public static int oJ(char c10, String str, String str2) {
        return (((c10 * 31) + str.hashCode()) * 31) + str2.hashCode();
    }

    public double ZYk() {
        return this.ex;
    }

    public int hashCode() {
        return oJ(this.ZYk, this.f11571ba, this.Pfn);
    }

    public List<eZI> oJ() {
        return this.oJ;
    }
}
