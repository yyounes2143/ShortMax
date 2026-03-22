package com.bytedance.adsdk.ZYk;

import android.graphics.Rect;
import android.util.LongSparseArray;
import android.util.SparseArray;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* loaded from: classes3.dex */
public class cFZ {
    private float BTZ;
    private Map<String, com.bytedance.adsdk.ZYk.tB.tB> Pfn;
    private float PiB;
    private ZYk RZ;
    private oJ Ry;
    private boolean WcQ;

    /* renamed from: ba  reason: collision with root package name */
    private List<com.bytedance.adsdk.ZYk.tB.ba> f11503ba;
    private SparseArray<com.bytedance.adsdk.ZYk.tB.ex> cFZ;
    private float dLZ;
    private tB eZI;
    private Map<String, kkU> ex;
    private List<com.bytedance.adsdk.ZYk.tB.tB.Pfn> jFA;
    private Rect kkU;

    /* renamed from: so  reason: collision with root package name */
    private LongSparseArray<com.bytedance.adsdk.ZYk.tB.tB.Pfn> f11505so;
    private Map<String, List<com.bytedance.adsdk.ZYk.tB.tB.Pfn>> tB;
    private final Ry oJ = new Ry();
    private final HashSet<String> ZYk = new HashSet<>();
    private int awB = 0;

    /* renamed from: si  reason: collision with root package name */
    private String f11504si = "";

    /* loaded from: classes3.dex */
    public static class ZYk {
        public int[][] ZYk;
        public String oJ;
        public JSONArray tB;
    }

    /* loaded from: classes3.dex */
    public static class oJ {
        public int Pfn;
        public Map<String, Object> ZYk;

        /* renamed from: ba  reason: collision with root package name */
        public String f11506ba;
        public JSONArray cFZ;
        public int ex;
        public int oJ;
        public Map<String, Object> tB;
    }

    /* loaded from: classes3.dex */
    public static class tB {
        public int[] Pfn;
        public String ZYk;

        /* renamed from: ba  reason: collision with root package name */
        public String f11509ba;
        public JSONArray cFZ;
        public String ex;
        public int oJ;
        public String tB;
    }

    public float BTZ() {
        return this.PiB;
    }

    public float Pfn() {
        return (si() / this.PiB) * 1000.0f;
    }

    public List<com.bytedance.adsdk.ZYk.tB.tB.Pfn> PiB() {
        return this.jFA;
    }

    public SparseArray<com.bytedance.adsdk.ZYk.tB.ex> WcQ() {
        return this.cFZ;
    }

    public int ZYk() {
        return this.awB;
    }

    public Map<String, com.bytedance.adsdk.ZYk.tB.tB> awB() {
        return this.Pfn;
    }

    public float ba() {
        return this.dLZ;
    }

    public float cFZ() {
        return this.BTZ;
    }

    public oJ dLZ() {
        return this.Ry;
    }

    public Map<String, kkU> eZI() {
        return this.ex;
    }

    public Rect ex() {
        return this.kkU;
    }

    public String jFA() {
        return this.f11504si;
    }

    public ZYk kkU() {
        return this.RZ;
    }

    public void oJ(Rect rect, float f10, float f11, float f12, List<com.bytedance.adsdk.ZYk.tB.tB.Pfn> list, LongSparseArray<com.bytedance.adsdk.ZYk.tB.tB.Pfn> longSparseArray, Map<String, List<com.bytedance.adsdk.ZYk.tB.tB.Pfn>> map, Map<String, kkU> map2, SparseArray<com.bytedance.adsdk.ZYk.tB.ex> sparseArray, Map<String, com.bytedance.adsdk.ZYk.tB.tB> map3, List<com.bytedance.adsdk.ZYk.tB.ba> list2, tB tBVar, String str, oJ oJVar, ZYk zYk) {
        this.kkU = rect;
        this.dLZ = f10;
        this.BTZ = f11;
        this.PiB = f12;
        this.jFA = list;
        this.f11505so = longSparseArray;
        this.tB = map;
        this.ex = map2;
        this.cFZ = sparseArray;
        this.Pfn = map3;
        this.f11503ba = list2;
        this.eZI = tBVar;
        this.f11504si = str;
        this.Ry = oJVar;
        this.RZ = zYk;
    }

    public float si() {
        return this.BTZ - this.dLZ;
    }

    public tB so() {
        return this.eZI;
    }

    public Ry tB() {
        return this.oJ;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        for (com.bytedance.adsdk.ZYk.tB.tB.Pfn pfn : this.jFA) {
            sb2.append(pfn.oJ("\t"));
        }
        return sb2.toString();
    }

    public void ZYk(boolean z10) {
        this.oJ.oJ(z10);
    }

    public com.bytedance.adsdk.ZYk.tB.ba tB(String str) {
        int size = this.f11503ba.size();
        for (int i10 = 0; i10 < size; i10++) {
            com.bytedance.adsdk.ZYk.tB.ba baVar = this.f11503ba.get(i10);
            if (baVar.oJ(str)) {
                return baVar;
            }
        }
        return null;
    }

    public List<com.bytedance.adsdk.ZYk.tB.tB.Pfn> ZYk(String str) {
        return this.tB.get(str);
    }

    public void oJ(String str) {
        this.ZYk.add(str);
    }

    public void oJ(boolean z10) {
        this.WcQ = z10;
    }

    public void oJ(int i10) {
        this.awB += i10;
    }

    public boolean oJ() {
        return this.WcQ;
    }

    public com.bytedance.adsdk.ZYk.tB.tB.Pfn oJ(long j10) {
        return this.f11505so.get(j10);
    }

    public float oJ(float f10) {
        return com.bytedance.adsdk.ZYk.ba.Pfn.oJ(this.dLZ, this.BTZ, f10);
    }
}
