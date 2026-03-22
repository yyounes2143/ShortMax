package ep;

import android.text.Layout;
import androidx.annotation.Nullable;
/* compiled from: TtmlStyle.java */
/* loaded from: classes8.dex */
final class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f51494a;

    /* renamed from: b  reason: collision with root package name */
    private int f51495b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f51496c;

    /* renamed from: d  reason: collision with root package name */
    private int f51497d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f51498e;

    /* renamed from: k  reason: collision with root package name */
    private float f51504k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f51505l;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Layout.Alignment f51508o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Layout.Alignment f51509p;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b f51511r;
    @Nullable

    /* renamed from: t  reason: collision with root package name */
    private String f51513t;
    @Nullable

    /* renamed from: u  reason: collision with root package name */
    private String f51514u;

    /* renamed from: f  reason: collision with root package name */
    private int f51499f = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f51500g = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f51501h = -1;

    /* renamed from: i  reason: collision with root package name */
    private int f51502i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f51503j = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f51506m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f51507n = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f51510q = -1;

    /* renamed from: s  reason: collision with root package name */
    private float f51512s = Float.MAX_VALUE;

    private g t(@Nullable g gVar, boolean z10) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f51496c && gVar.f51496c) {
                z(gVar.f51495b);
            }
            if (this.f51501h == -1) {
                this.f51501h = gVar.f51501h;
            }
            if (this.f51502i == -1) {
                this.f51502i = gVar.f51502i;
            }
            if (this.f51494a == null && (str = gVar.f51494a) != null) {
                this.f51494a = str;
            }
            if (this.f51499f == -1) {
                this.f51499f = gVar.f51499f;
            }
            if (this.f51500g == -1) {
                this.f51500g = gVar.f51500g;
            }
            if (this.f51507n == -1) {
                this.f51507n = gVar.f51507n;
            }
            if (this.f51508o == null && (alignment2 = gVar.f51508o) != null) {
                this.f51508o = alignment2;
            }
            if (this.f51509p == null && (alignment = gVar.f51509p) != null) {
                this.f51509p = alignment;
            }
            if (this.f51510q == -1) {
                this.f51510q = gVar.f51510q;
            }
            if (this.f51503j == -1) {
                this.f51503j = gVar.f51503j;
                this.f51504k = gVar.f51504k;
            }
            if (this.f51511r == null) {
                this.f51511r = gVar.f51511r;
            }
            if (this.f51512s == Float.MAX_VALUE) {
                this.f51512s = gVar.f51512s;
            }
            if (this.f51513t == null) {
                this.f51513t = gVar.f51513t;
            }
            if (this.f51514u == null) {
                this.f51514u = gVar.f51514u;
            }
            if (z10 && !this.f51498e && gVar.f51498e) {
                w(gVar.f51497d);
            }
            if (z10 && this.f51506m == -1 && (i10 = gVar.f51506m) != -1) {
                this.f51506m = i10;
            }
        }
        return this;
    }

    public g A(@Nullable String str) {
        this.f51494a = str;
        return this;
    }

    public g B(float f10) {
        this.f51504k = f10;
        return this;
    }

    public g C(int i10) {
        this.f51503j = i10;
        return this;
    }

    public g D(@Nullable String str) {
        this.f51505l = str;
        return this;
    }

    public g E(boolean z10) {
        this.f51502i = z10 ? 1 : 0;
        return this;
    }

    public g F(boolean z10) {
        this.f51499f = z10 ? 1 : 0;
        return this;
    }

    public g G(@Nullable Layout.Alignment alignment) {
        this.f51509p = alignment;
        return this;
    }

    public g H(@Nullable String str) {
        this.f51513t = str;
        return this;
    }

    public g I(int i10) {
        this.f51507n = i10;
        return this;
    }

    public g J(int i10) {
        this.f51506m = i10;
        return this;
    }

    public g K(float f10) {
        this.f51512s = f10;
        return this;
    }

    public g L(@Nullable Layout.Alignment alignment) {
        this.f51508o = alignment;
        return this;
    }

    public g M(boolean z10) {
        this.f51510q = z10 ? 1 : 0;
        return this;
    }

    public g N(@Nullable b bVar) {
        this.f51511r = bVar;
        return this;
    }

    public g O(boolean z10) {
        this.f51500g = z10 ? 1 : 0;
        return this;
    }

    public g a(@Nullable g gVar) {
        return t(gVar, true);
    }

    public int b() {
        if (this.f51498e) {
            return this.f51497d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    @Nullable
    public String c() {
        return this.f51514u;
    }

    public int d() {
        if (this.f51496c) {
            return this.f51495b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    @Nullable
    public String e() {
        return this.f51494a;
    }

    public float f() {
        return this.f51504k;
    }

    public int g() {
        return this.f51503j;
    }

    @Nullable
    public String h() {
        return this.f51505l;
    }

    @Nullable
    public Layout.Alignment i() {
        return this.f51509p;
    }

    @Nullable
    public String j() {
        return this.f51513t;
    }

    public int k() {
        return this.f51507n;
    }

    public int l() {
        return this.f51506m;
    }

    public float m() {
        return this.f51512s;
    }

    public int n() {
        int i10;
        int i11 = this.f51501h;
        if (i11 == -1 && this.f51502i == -1) {
            return -1;
        }
        int i12 = 0;
        if (i11 == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.f51502i == 1) {
            i12 = 2;
        }
        return i10 | i12;
    }

    @Nullable
    public Layout.Alignment o() {
        return this.f51508o;
    }

    public boolean p() {
        if (this.f51510q == 1) {
            return true;
        }
        return false;
    }

    @Nullable
    public b q() {
        return this.f51511r;
    }

    public boolean r() {
        return this.f51498e;
    }

    public boolean s() {
        return this.f51496c;
    }

    public boolean u() {
        if (this.f51499f == 1) {
            return true;
        }
        return false;
    }

    public boolean v() {
        if (this.f51500g == 1) {
            return true;
        }
        return false;
    }

    public g w(int i10) {
        this.f51497d = i10;
        this.f51498e = true;
        return this;
    }

    public g x(boolean z10) {
        this.f51501h = z10 ? 1 : 0;
        return this;
    }

    public g y(@Nullable String str) {
        this.f51514u = str;
        return this;
    }

    public g z(int i10) {
        this.f51495b = i10;
        this.f51496c = true;
        return this;
    }
}
