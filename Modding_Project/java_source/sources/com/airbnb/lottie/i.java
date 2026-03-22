package com.airbnb.lottie;

import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.layer.Layer;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* compiled from: LottieComposition.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: c  reason: collision with root package name */
    private Map<String, List<Layer>> f4501c;

    /* renamed from: d  reason: collision with root package name */
    private Map<String, m0> f4502d;

    /* renamed from: e  reason: collision with root package name */
    private float f4503e;

    /* renamed from: f  reason: collision with root package name */
    private Map<String, x0.b> f4504f;

    /* renamed from: g  reason: collision with root package name */
    private List<x0.g> f4505g;

    /* renamed from: h  reason: collision with root package name */
    private SparseArrayCompat<x0.c> f4506h;

    /* renamed from: i  reason: collision with root package name */
    private LongSparseArray<Layer> f4507i;

    /* renamed from: j  reason: collision with root package name */
    private List<Layer> f4508j;

    /* renamed from: k  reason: collision with root package name */
    private Rect f4509k;

    /* renamed from: l  reason: collision with root package name */
    private float f4510l;

    /* renamed from: m  reason: collision with root package name */
    private float f4511m;

    /* renamed from: n  reason: collision with root package name */
    private float f4512n;

    /* renamed from: o  reason: collision with root package name */
    private boolean f4513o;

    /* renamed from: q  reason: collision with root package name */
    private int f4515q;

    /* renamed from: r  reason: collision with root package name */
    private int f4516r;

    /* renamed from: a  reason: collision with root package name */
    private final v0 f4499a = new v0();

    /* renamed from: b  reason: collision with root package name */
    private final HashSet<String> f4500b = new HashSet<>();

    /* renamed from: p  reason: collision with root package name */
    private int f4514p = 0;

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void a(String str) {
        d1.f.c(str);
        this.f4500b.add(str);
    }

    public Rect b() {
        return this.f4509k;
    }

    public SparseArrayCompat<x0.c> c() {
        return this.f4506h;
    }

    public float d() {
        return (e() / this.f4512n) * 1000.0f;
    }

    public float e() {
        return this.f4511m - this.f4510l;
    }

    public float f() {
        return this.f4511m;
    }

    public Map<String, x0.b> g() {
        return this.f4504f;
    }

    public float h(float f10) {
        return d1.k.i(this.f4510l, this.f4511m, f10);
    }

    public float i() {
        return this.f4512n;
    }

    public Map<String, m0> j() {
        float e10 = d1.p.e();
        if (e10 != this.f4503e) {
            for (Map.Entry<String, m0> entry : this.f4502d.entrySet()) {
                this.f4502d.put(entry.getKey(), entry.getValue().a(this.f4503e / e10));
            }
        }
        this.f4503e = e10;
        return this.f4502d;
    }

    public List<Layer> k() {
        return this.f4508j;
    }

    @Nullable
    public x0.g l(String str) {
        int size = this.f4505g.size();
        for (int i10 = 0; i10 < size; i10++) {
            x0.g gVar = this.f4505g.get(i10);
            if (gVar.a(str)) {
                return gVar;
            }
        }
        return null;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public int m() {
        return this.f4514p;
    }

    public v0 n() {
        return this.f4499a;
    }

    @Nullable
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public List<Layer> o(String str) {
        return this.f4501c.get(str);
    }

    public float p() {
        return this.f4510l;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public boolean q() {
        return this.f4513o;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void r(int i10) {
        this.f4514p += i10;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void s(Rect rect, float f10, float f11, float f12, List<Layer> list, LongSparseArray<Layer> longSparseArray, Map<String, List<Layer>> map, Map<String, m0> map2, float f13, SparseArrayCompat<x0.c> sparseArrayCompat, Map<String, x0.b> map3, List<x0.g> list2, int i10, int i11) {
        this.f4509k = rect;
        this.f4510l = f10;
        this.f4511m = f11;
        this.f4512n = f12;
        this.f4508j = list;
        this.f4507i = longSparseArray;
        this.f4501c = map;
        this.f4502d = map2;
        this.f4503e = f13;
        this.f4506h = sparseArrayCompat;
        this.f4504f = map3;
        this.f4505g = list2;
        this.f4515q = i10;
        this.f4516r = i11;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Layer t(long j10) {
        return this.f4507i.get(j10);
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        for (Layer layer : this.f4508j) {
            sb2.append(layer.z("\t"));
        }
        return sb2.toString();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void u(boolean z10) {
        this.f4513o = z10;
    }

    public void v(boolean z10) {
        this.f4499a.b(z10);
    }
}
