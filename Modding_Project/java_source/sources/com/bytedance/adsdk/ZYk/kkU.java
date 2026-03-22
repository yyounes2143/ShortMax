package com.bytedance.adsdk.ZYk;

import android.graphics.Bitmap;
import java.util.List;
import org.json.JSONArray;
/* loaded from: classes3.dex */
public class kkU {
    private final String Pfn;
    private final int ZYk;

    /* renamed from: ba  reason: collision with root package name */
    private final String f11518ba;
    private final List<oJ> cFZ;
    private Bitmap dLZ;
    private final String ex;
    private final int[][] jFA;
    private final JSONArray kkU;
    private final int oJ;

    /* renamed from: so  reason: collision with root package name */
    private final String f11519so;
    private final String tB;

    /* loaded from: classes3.dex */
    public static class oJ {
        public int Pfn;
        public int ZYk;

        /* renamed from: ba  reason: collision with root package name */
        public int f11520ba;
        public String cFZ;
        public String ex;
        public int oJ;
        public String tB;
    }

    public kkU(int i10, int i11, String str, String str2, String str3, String str4, List<oJ> list, String str5, int[][] iArr, JSONArray jSONArray) {
        this.oJ = i10;
        this.ZYk = i11;
        this.tB = str;
        this.ex = str2;
        this.Pfn = str3;
        this.f11518ba = str4;
        this.cFZ = list;
        this.f11519so = str5;
        this.jFA = iArr;
        this.kkU = jSONArray;
    }

    public String Pfn() {
        return this.f11519so;
    }

    public int ZYk() {
        return this.ZYk;
    }

    public int[][] ba() {
        return this.jFA;
    }

    public JSONArray cFZ() {
        return this.kkU;
    }

    public Bitmap dLZ() {
        return this.dLZ;
    }

    public String ex() {
        return this.f11518ba;
    }

    public String jFA() {
        return this.ex;
    }

    public String kkU() {
        return this.Pfn;
    }

    public int oJ() {
        return this.oJ;
    }

    public String so() {
        return this.tB;
    }

    public List<oJ> tB() {
        return this.cFZ;
    }

    public void oJ(Bitmap bitmap) {
        this.dLZ = bitmap;
    }
}
