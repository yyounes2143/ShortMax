package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.i;
import com.airbnb.lottie.model.content.LBlendMode;
import com.airbnb.lottie.model.content.Mask;
import java.util.List;
import java.util.Locale;
import y0.j;
import y0.k;
import y0.n;
/* loaded from: classes2.dex */
public class Layer {

    /* renamed from: a  reason: collision with root package name */
    private final List<z0.c> f4601a;

    /* renamed from: b  reason: collision with root package name */
    private final i f4602b;

    /* renamed from: c  reason: collision with root package name */
    private final String f4603c;

    /* renamed from: d  reason: collision with root package name */
    private final long f4604d;

    /* renamed from: e  reason: collision with root package name */
    private final LayerType f4605e;

    /* renamed from: f  reason: collision with root package name */
    private final long f4606f;
    @Nullable

    /* renamed from: g  reason: collision with root package name */
    private final String f4607g;

    /* renamed from: h  reason: collision with root package name */
    private final List<Mask> f4608h;

    /* renamed from: i  reason: collision with root package name */
    private final n f4609i;

    /* renamed from: j  reason: collision with root package name */
    private final int f4610j;

    /* renamed from: k  reason: collision with root package name */
    private final int f4611k;

    /* renamed from: l  reason: collision with root package name */
    private final int f4612l;

    /* renamed from: m  reason: collision with root package name */
    private final float f4613m;

    /* renamed from: n  reason: collision with root package name */
    private final float f4614n;

    /* renamed from: o  reason: collision with root package name */
    private final float f4615o;

    /* renamed from: p  reason: collision with root package name */
    private final float f4616p;
    @Nullable

    /* renamed from: q  reason: collision with root package name */
    private final j f4617q;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private final k f4618r;
    @Nullable

    /* renamed from: s  reason: collision with root package name */
    private final y0.b f4619s;

    /* renamed from: t  reason: collision with root package name */
    private final List<e1.a<Float>> f4620t;

    /* renamed from: u  reason: collision with root package name */
    private final MatteType f4621u;

    /* renamed from: v  reason: collision with root package name */
    private final boolean f4622v;
    @Nullable

    /* renamed from: w  reason: collision with root package name */
    private final z0.a f4623w;
    @Nullable

    /* renamed from: x  reason: collision with root package name */
    private final c1.j f4624x;

    /* renamed from: y  reason: collision with root package name */
    private final LBlendMode f4625y;

    /* loaded from: classes2.dex */
    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* loaded from: classes2.dex */
    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List<z0.c> list, i iVar, String str, long j10, LayerType layerType, long j11, @Nullable String str2, List<Mask> list2, n nVar, int i10, int i11, int i12, float f10, float f11, float f12, float f13, @Nullable j jVar, @Nullable k kVar, List<e1.a<Float>> list3, MatteType matteType, @Nullable y0.b bVar, boolean z10, @Nullable z0.a aVar, @Nullable c1.j jVar2, LBlendMode lBlendMode) {
        this.f4601a = list;
        this.f4602b = iVar;
        this.f4603c = str;
        this.f4604d = j10;
        this.f4605e = layerType;
        this.f4606f = j11;
        this.f4607g = str2;
        this.f4608h = list2;
        this.f4609i = nVar;
        this.f4610j = i10;
        this.f4611k = i11;
        this.f4612l = i12;
        this.f4613m = f10;
        this.f4614n = f11;
        this.f4615o = f12;
        this.f4616p = f13;
        this.f4617q = jVar;
        this.f4618r = kVar;
        this.f4620t = list3;
        this.f4621u = matteType;
        this.f4619s = bVar;
        this.f4622v = z10;
        this.f4623w = aVar;
        this.f4624x = jVar2;
        this.f4625y = lBlendMode;
    }

    @Nullable
    public LBlendMode a() {
        return this.f4625y;
    }

    @Nullable
    public z0.a b() {
        return this.f4623w;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public i c() {
        return this.f4602b;
    }

    @Nullable
    public c1.j d() {
        return this.f4624x;
    }

    public long e() {
        return this.f4604d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<e1.a<Float>> f() {
        return this.f4620t;
    }

    public LayerType g() {
        return this.f4605e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<Mask> h() {
        return this.f4608h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MatteType i() {
        return this.f4621u;
    }

    public String j() {
        return this.f4603c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long k() {
        return this.f4606f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float l() {
        return this.f4616p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float m() {
        return this.f4615o;
    }

    @Nullable
    public String n() {
        return this.f4607g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<z0.c> o() {
        return this.f4601a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int p() {
        return this.f4612l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int q() {
        return this.f4611k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int r() {
        return this.f4610j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float s() {
        return this.f4614n / this.f4602b.e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public j t() {
        return this.f4617q;
    }

    public String toString() {
        return z("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public k u() {
        return this.f4618r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public y0.b v() {
        return this.f4619s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float w() {
        return this.f4613m;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n x() {
        return this.f4609i;
    }

    public boolean y() {
        return this.f4622v;
    }

    public String z(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(j());
        sb2.append("\n");
        Layer t10 = this.f4602b.t(k());
        if (t10 != null) {
            sb2.append("\t\tParents: ");
            sb2.append(t10.j());
            Layer t11 = this.f4602b.t(t10.k());
            while (t11 != null) {
                sb2.append("->");
                sb2.append(t11.j());
                t11 = this.f4602b.t(t11.k());
            }
            sb2.append(str);
            sb2.append("\n");
        }
        if (!h().isEmpty()) {
            sb2.append(str);
            sb2.append("\tMasks: ");
            sb2.append(h().size());
            sb2.append("\n");
        }
        if (r() != 0 && q() != 0) {
            sb2.append(str);
            sb2.append("\tBackground: ");
            sb2.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r()), Integer.valueOf(q()), Integer.valueOf(p())));
        }
        if (!this.f4601a.isEmpty()) {
            sb2.append(str);
            sb2.append("\tShapes:\n");
            for (z0.c cVar : this.f4601a) {
                sb2.append(str);
                sb2.append("\t\t");
                sb2.append(cVar);
                sb2.append("\n");
            }
        }
        return sb2.toString();
    }
}
