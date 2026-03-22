package y6;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: WebvttCssStyle.java */
/* loaded from: classes4.dex */
public final class d {
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f70690f;

    /* renamed from: h  reason: collision with root package name */
    private int f70692h;

    /* renamed from: o  reason: collision with root package name */
    private float f70699o;

    /* renamed from: a  reason: collision with root package name */
    private String f70685a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f70686b = "";

    /* renamed from: c  reason: collision with root package name */
    private Set<String> f70687c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private String f70688d = "";
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f70689e = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f70691g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f70693i = false;

    /* renamed from: j  reason: collision with root package name */
    private int f70694j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f70695k = -1;

    /* renamed from: l  reason: collision with root package name */
    private int f70696l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f70697m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f70698n = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f70700p = -1;

    /* renamed from: q  reason: collision with root package name */
    private boolean f70701q = false;

    private static int B(int i10, String str, @Nullable String str2, int i11) {
        if (!str.isEmpty() && i10 != -1) {
            if (!str.equals(str2)) {
                return -1;
            }
            return i10 + i11;
        }
        return i10;
    }

    public d A(boolean z10) {
        this.f70695k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f70693i) {
            return this.f70692h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f70701q;
    }

    public int c() {
        if (this.f70691g) {
            return this.f70690f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    @Nullable
    public String d() {
        return this.f70689e;
    }

    public float e() {
        return this.f70699o;
    }

    public int f() {
        return this.f70698n;
    }

    public int g() {
        return this.f70700p;
    }

    public int h(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        if (this.f70685a.isEmpty() && this.f70686b.isEmpty() && this.f70687c.isEmpty() && this.f70688d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int B = B(B(B(0, this.f70685a, str, 1073741824), this.f70686b, str2, 2), this.f70688d, str3, 4);
        if (B == -1 || !set.containsAll(this.f70687c)) {
            return 0;
        }
        return B + (this.f70687c.size() * 4);
    }

    public int i() {
        int i10;
        int i11 = this.f70696l;
        if (i11 == -1 && this.f70697m == -1) {
            return -1;
        }
        int i12 = 0;
        if (i11 == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.f70697m == 1) {
            i12 = 2;
        }
        return i10 | i12;
    }

    public boolean j() {
        return this.f70693i;
    }

    public boolean k() {
        return this.f70691g;
    }

    public boolean l() {
        if (this.f70694j == 1) {
            return true;
        }
        return false;
    }

    public boolean m() {
        if (this.f70695k == 1) {
            return true;
        }
        return false;
    }

    public d n(int i10) {
        this.f70692h = i10;
        this.f70693i = true;
        return this;
    }

    public d o(boolean z10) {
        this.f70696l = z10 ? 1 : 0;
        return this;
    }

    public d p(boolean z10) {
        this.f70701q = z10;
        return this;
    }

    public d q(int i10) {
        this.f70690f = i10;
        this.f70691g = true;
        return this;
    }

    public d r(@Nullable String str) {
        String e10;
        if (str == null) {
            e10 = null;
        } else {
            e10 = h7.a.e(str);
        }
        this.f70689e = e10;
        return this;
    }

    public d s(float f10) {
        this.f70699o = f10;
        return this;
    }

    public d t(int i10) {
        this.f70698n = i10;
        return this;
    }

    public d u(boolean z10) {
        this.f70697m = z10 ? 1 : 0;
        return this;
    }

    public d v(int i10) {
        this.f70700p = i10;
        return this;
    }

    public void w(String[] strArr) {
        this.f70687c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f70685a = str;
    }

    public void y(String str) {
        this.f70686b = str;
    }

    public void z(String str) {
        this.f70688d = str;
    }
}
