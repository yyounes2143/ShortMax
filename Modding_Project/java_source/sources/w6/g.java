package w6;

import android.text.Layout;
import androidx.annotation.Nullable;
/* compiled from: TtmlStyle.java */
/* loaded from: classes4.dex */
final class g {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private String f69700a;

    /* renamed from: b  reason: collision with root package name */
    private int f69701b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f69702c;

    /* renamed from: d  reason: collision with root package name */
    private int f69703d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f69704e;

    /* renamed from: k  reason: collision with root package name */
    private float f69710k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private String f69711l;
    @Nullable

    /* renamed from: o  reason: collision with root package name */
    private Layout.Alignment f69714o;
    @Nullable

    /* renamed from: p  reason: collision with root package name */
    private Layout.Alignment f69715p;
    @Nullable

    /* renamed from: r  reason: collision with root package name */
    private b f69717r;

    /* renamed from: f  reason: collision with root package name */
    private int f69705f = -1;

    /* renamed from: g  reason: collision with root package name */
    private int f69706g = -1;

    /* renamed from: h  reason: collision with root package name */
    private int f69707h = -1;

    /* renamed from: i  reason: collision with root package name */
    private int f69708i = -1;

    /* renamed from: j  reason: collision with root package name */
    private int f69709j = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f69712m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f69713n = -1;

    /* renamed from: q  reason: collision with root package name */
    private int f69716q = -1;

    /* renamed from: s  reason: collision with root package name */
    private float f69718s = Float.MAX_VALUE;

    private g r(@Nullable g gVar, boolean z10) {
        int i10;
        Layout.Alignment alignment;
        Layout.Alignment alignment2;
        String str;
        if (gVar != null) {
            if (!this.f69702c && gVar.f69702c) {
                w(gVar.f69701b);
            }
            if (this.f69707h == -1) {
                this.f69707h = gVar.f69707h;
            }
            if (this.f69708i == -1) {
                this.f69708i = gVar.f69708i;
            }
            if (this.f69700a == null && (str = gVar.f69700a) != null) {
                this.f69700a = str;
            }
            if (this.f69705f == -1) {
                this.f69705f = gVar.f69705f;
            }
            if (this.f69706g == -1) {
                this.f69706g = gVar.f69706g;
            }
            if (this.f69713n == -1) {
                this.f69713n = gVar.f69713n;
            }
            if (this.f69714o == null && (alignment2 = gVar.f69714o) != null) {
                this.f69714o = alignment2;
            }
            if (this.f69715p == null && (alignment = gVar.f69715p) != null) {
                this.f69715p = alignment;
            }
            if (this.f69716q == -1) {
                this.f69716q = gVar.f69716q;
            }
            if (this.f69709j == -1) {
                this.f69709j = gVar.f69709j;
                this.f69710k = gVar.f69710k;
            }
            if (this.f69717r == null) {
                this.f69717r = gVar.f69717r;
            }
            if (this.f69718s == Float.MAX_VALUE) {
                this.f69718s = gVar.f69718s;
            }
            if (z10 && !this.f69704e && gVar.f69704e) {
                u(gVar.f69703d);
            }
            if (z10 && this.f69712m == -1 && (i10 = gVar.f69712m) != -1) {
                this.f69712m = i10;
            }
        }
        return this;
    }

    public g A(@Nullable String str) {
        this.f69711l = str;
        return this;
    }

    public g B(boolean z10) {
        this.f69708i = z10 ? 1 : 0;
        return this;
    }

    public g C(boolean z10) {
        this.f69705f = z10 ? 1 : 0;
        return this;
    }

    public g D(@Nullable Layout.Alignment alignment) {
        this.f69715p = alignment;
        return this;
    }

    public g E(int i10) {
        this.f69713n = i10;
        return this;
    }

    public g F(int i10) {
        this.f69712m = i10;
        return this;
    }

    public g G(float f10) {
        this.f69718s = f10;
        return this;
    }

    public g H(@Nullable Layout.Alignment alignment) {
        this.f69714o = alignment;
        return this;
    }

    public g I(boolean z10) {
        this.f69716q = z10 ? 1 : 0;
        return this;
    }

    public g J(@Nullable b bVar) {
        this.f69717r = bVar;
        return this;
    }

    public g K(boolean z10) {
        this.f69706g = z10 ? 1 : 0;
        return this;
    }

    public g a(@Nullable g gVar) {
        return r(gVar, true);
    }

    public int b() {
        if (this.f69704e) {
            return this.f69703d;
        }
        throw new IllegalStateException("Background color has not been defined.");
    }

    public int c() {
        if (this.f69702c) {
            return this.f69701b;
        }
        throw new IllegalStateException("Font color has not been defined.");
    }

    @Nullable
    public String d() {
        return this.f69700a;
    }

    public float e() {
        return this.f69710k;
    }

    public int f() {
        return this.f69709j;
    }

    @Nullable
    public String g() {
        return this.f69711l;
    }

    @Nullable
    public Layout.Alignment h() {
        return this.f69715p;
    }

    public int i() {
        return this.f69713n;
    }

    public int j() {
        return this.f69712m;
    }

    public float k() {
        return this.f69718s;
    }

    public int l() {
        int i10;
        int i11 = this.f69707h;
        if (i11 == -1 && this.f69708i == -1) {
            return -1;
        }
        int i12 = 0;
        if (i11 == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.f69708i == 1) {
            i12 = 2;
        }
        return i10 | i12;
    }

    @Nullable
    public Layout.Alignment m() {
        return this.f69714o;
    }

    public boolean n() {
        if (this.f69716q == 1) {
            return true;
        }
        return false;
    }

    @Nullable
    public b o() {
        return this.f69717r;
    }

    public boolean p() {
        return this.f69704e;
    }

    public boolean q() {
        return this.f69702c;
    }

    public boolean s() {
        if (this.f69705f == 1) {
            return true;
        }
        return false;
    }

    public boolean t() {
        if (this.f69706g == 1) {
            return true;
        }
        return false;
    }

    public g u(int i10) {
        this.f69703d = i10;
        this.f69704e = true;
        return this;
    }

    public g v(boolean z10) {
        this.f69707h = z10 ? 1 : 0;
        return this;
    }

    public g w(int i10) {
        this.f69701b = i10;
        this.f69702c = true;
        return this;
    }

    public g x(@Nullable String str) {
        this.f69700a = str;
        return this;
    }

    public g y(float f10) {
        this.f69710k = f10;
        return this;
    }

    public g z(int i10) {
        this.f69709j = i10;
        return this;
    }
}
