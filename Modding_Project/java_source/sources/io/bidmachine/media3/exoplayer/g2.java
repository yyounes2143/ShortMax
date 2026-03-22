package io.bidmachine.media3.exoplayer;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import zm.a0;
/* compiled from: PlaylistTimeline.java */
/* loaded from: classes8.dex */
final class g2 extends gn.a {

    /* renamed from: h  reason: collision with root package name */
    private final int f55939h;

    /* renamed from: i  reason: collision with root package name */
    private final int f55940i;

    /* renamed from: j  reason: collision with root package name */
    private final int[] f55941j;

    /* renamed from: k  reason: collision with root package name */
    private final int[] f55942k;

    /* renamed from: l  reason: collision with root package name */
    private final zm.a0[] f55943l;

    /* renamed from: m  reason: collision with root package name */
    private final Object[] f55944m;

    /* renamed from: n  reason: collision with root package name */
    private final HashMap<Object, Integer> f55945n;

    /* compiled from: PlaylistTimeline.java */
    /* loaded from: classes8.dex */
    class a extends io.bidmachine.media3.exoplayer.source.m {

        /* renamed from: f  reason: collision with root package name */
        private final a0.c f55946f;

        a(zm.a0 a0Var) {
            super(a0Var);
            this.f55946f = new a0.c();
        }

        @Override // io.bidmachine.media3.exoplayer.source.m, zm.a0
        public a0.b g(int i10, a0.b bVar, boolean z10) {
            a0.b g10 = super.g(i10, bVar, z10);
            if (super.n(g10.f71742c, this.f55946f).f()) {
                g10.t(bVar.f71740a, bVar.f71741b, bVar.f71742c, bVar.f71743d, bVar.f71744e, zm.b.f71773g, true);
            } else {
                g10.f71745f = true;
            }
            return g10;
        }
    }

    public g2(Collection<? extends p1> collection, sn.t tVar) {
        this(G(collection), H(collection), tVar);
    }

    private static zm.a0[] G(Collection<? extends p1> collection) {
        zm.a0[] a0VarArr = new zm.a0[collection.size()];
        int i10 = 0;
        for (p1 p1Var : collection) {
            a0VarArr[i10] = p1Var.a();
            i10++;
        }
        return a0VarArr;
    }

    private static Object[] H(Collection<? extends p1> collection) {
        Object[] objArr = new Object[collection.size()];
        int i10 = 0;
        for (p1 p1Var : collection) {
            objArr[i10] = p1Var.getUid();
            i10++;
        }
        return objArr;
    }

    @Override // gn.a
    protected int A(int i10) {
        return this.f55942k[i10];
    }

    @Override // gn.a
    protected zm.a0 D(int i10) {
        return this.f55943l[i10];
    }

    public g2 E(sn.t tVar) {
        zm.a0[] a0VarArr = new zm.a0[this.f55943l.length];
        int i10 = 0;
        while (true) {
            zm.a0[] a0VarArr2 = this.f55943l;
            if (i10 < a0VarArr2.length) {
                a0VarArr[i10] = new a(a0VarArr2[i10]);
                i10++;
            } else {
                return new g2(a0VarArr, this.f55944m, tVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<zm.a0> F() {
        return Arrays.asList(this.f55943l);
    }

    @Override // zm.a0
    public int i() {
        return this.f55940i;
    }

    @Override // zm.a0
    public int p() {
        return this.f55939h;
    }

    @Override // gn.a
    protected int s(Object obj) {
        Integer num = this.f55945n.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // gn.a
    protected int t(int i10) {
        return cn.m0.g(this.f55941j, i10 + 1, false, false);
    }

    @Override // gn.a
    protected int u(int i10) {
        return cn.m0.g(this.f55942k, i10 + 1, false, false);
    }

    @Override // gn.a
    protected Object x(int i10) {
        return this.f55944m[i10];
    }

    @Override // gn.a
    protected int z(int i10) {
        return this.f55941j[i10];
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private g2(zm.a0[] a0VarArr, Object[] objArr, sn.t tVar) {
        super(false, tVar);
        int i10 = 0;
        int length = a0VarArr.length;
        this.f55943l = a0VarArr;
        this.f55941j = new int[length];
        this.f55942k = new int[length];
        this.f55944m = objArr;
        this.f55945n = new HashMap<>();
        int length2 = a0VarArr.length;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i10 < length2) {
            zm.a0 a0Var = a0VarArr[i10];
            this.f55943l[i13] = a0Var;
            this.f55942k[i13] = i11;
            this.f55941j[i13] = i12;
            i11 += a0Var.p();
            i12 += this.f55943l[i13].i();
            this.f55945n.put(objArr[i13], Integer.valueOf(i13));
            i10++;
            i13++;
        }
        this.f55939h = i11;
        this.f55940i = i12;
    }
}
