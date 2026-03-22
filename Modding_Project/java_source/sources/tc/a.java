package tc;
/* compiled from: DimensionStatus.java */
/* loaded from: classes6.dex */
public class a {

    /* renamed from: c  reason: collision with root package name */
    public static final a f67268c;

    /* renamed from: d  reason: collision with root package name */
    public static final a f67269d;

    /* renamed from: e  reason: collision with root package name */
    public static final a f67270e;

    /* renamed from: f  reason: collision with root package name */
    public static final a f67271f;

    /* renamed from: g  reason: collision with root package name */
    public static final a f67272g;

    /* renamed from: h  reason: collision with root package name */
    public static final a f67273h;

    /* renamed from: i  reason: collision with root package name */
    public static final a f67274i;

    /* renamed from: j  reason: collision with root package name */
    public static final a f67275j;

    /* renamed from: k  reason: collision with root package name */
    public static final a f67276k;

    /* renamed from: l  reason: collision with root package name */
    public static final a f67277l;

    /* renamed from: m  reason: collision with root package name */
    public static final a f67278m;

    /* renamed from: n  reason: collision with root package name */
    public static final a f67279n;

    /* renamed from: o  reason: collision with root package name */
    public static final a[] f67280o;

    /* renamed from: a  reason: collision with root package name */
    public final int f67281a;

    /* renamed from: b  reason: collision with root package name */
    public final boolean f67282b;

    static {
        a aVar = new a(0, false);
        f67268c = aVar;
        a aVar2 = new a(1, true);
        f67269d = aVar2;
        a aVar3 = new a(2, false);
        f67270e = aVar3;
        a aVar4 = new a(3, true);
        f67271f = aVar4;
        a aVar5 = new a(4, false);
        f67272g = aVar5;
        a aVar6 = new a(5, true);
        f67273h = aVar6;
        a aVar7 = new a(6, false);
        f67274i = aVar7;
        a aVar8 = new a(7, true);
        f67275j = aVar8;
        a aVar9 = new a(8, false);
        f67276k = aVar9;
        a aVar10 = new a(9, true);
        f67277l = aVar10;
        a aVar11 = new a(10, false);
        f67278m = aVar11;
        a aVar12 = new a(10, true);
        f67279n = aVar12;
        f67280o = new a[]{aVar, aVar2, aVar3, aVar4, aVar5, aVar6, aVar7, aVar8, aVar9, aVar10, aVar11, aVar12};
    }

    private a(int i10, boolean z10) {
        this.f67281a = i10;
        this.f67282b = z10;
    }

    public boolean a(a aVar) {
        int i10 = this.f67281a;
        int i11 = aVar.f67281a;
        if (i10 >= i11 && ((this.f67282b && f67277l != this) || i10 != i11)) {
            return false;
        }
        return true;
    }

    public a b() {
        if (!this.f67282b) {
            return f67280o[this.f67281a + 1];
        }
        return this;
    }
}
