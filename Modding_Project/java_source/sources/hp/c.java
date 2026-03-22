package hp;

import android.text.TextUtils;
import androidx.annotation.ColorInt;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* compiled from: WebvttCssStyle.java */
/* loaded from: classes8.dex */
public final class c {
    @ColorInt

    /* renamed from: f  reason: collision with root package name */
    private int f53176f;

    /* renamed from: h  reason: collision with root package name */
    private int f53178h;

    /* renamed from: o  reason: collision with root package name */
    private float f53185o;

    /* renamed from: a  reason: collision with root package name */
    private String f53171a = "";

    /* renamed from: b  reason: collision with root package name */
    private String f53172b = "";

    /* renamed from: c  reason: collision with root package name */
    private Set<String> f53173c = Collections.emptySet();

    /* renamed from: d  reason: collision with root package name */
    private String f53174d = "";
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private String f53175e = null;

    /* renamed from: g  reason: collision with root package name */
    private boolean f53177g = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f53179i = false;

    /* renamed from: j  reason: collision with root package name */
    private int f53180j = -1;

    /* renamed from: k  reason: collision with root package name */
    private int f53181k = -1;

    /* renamed from: l  reason: collision with root package name */
    private int f53182l = -1;

    /* renamed from: m  reason: collision with root package name */
    private int f53183m = -1;

    /* renamed from: n  reason: collision with root package name */
    private int f53184n = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f53186p = -1;

    /* renamed from: q  reason: collision with root package name */
    private boolean f53187q = false;

    private static int B(int i10, String str, @Nullable String str2, int i11) {
        if (!str.isEmpty() && i10 != -1) {
            if (!str.equals(str2)) {
                return -1;
            }
            return i10 + i11;
        }
        return i10;
    }

    public c A(boolean z10) {
        this.f53181k = z10 ? 1 : 0;
        return this;
    }

    public int a() {
        if (this.f53179i) {
            return this.f53178h;
        }
        throw new IllegalStateException("Background color not defined.");
    }

    public boolean b() {
        return this.f53187q;
    }

    public int c() {
        if (this.f53177g) {
            return this.f53176f;
        }
        throw new IllegalStateException("Font color not defined");
    }

    @Nullable
    public String d() {
        return this.f53175e;
    }

    public float e() {
        return this.f53185o;
    }

    public int f() {
        return this.f53184n;
    }

    public int g() {
        return this.f53186p;
    }

    public int h(@Nullable String str, @Nullable String str2, Set<String> set, @Nullable String str3) {
        if (this.f53171a.isEmpty() && this.f53172b.isEmpty() && this.f53173c.isEmpty() && this.f53174d.isEmpty()) {
            return TextUtils.isEmpty(str2) ? 1 : 0;
        }
        int B = B(B(B(0, this.f53171a, str, 1073741824), this.f53172b, str2, 2), this.f53174d, str3, 4);
        if (B == -1 || !set.containsAll(this.f53173c)) {
            return 0;
        }
        return B + (this.f53173c.size() * 4);
    }

    public int i() {
        int i10;
        int i11 = this.f53182l;
        if (i11 == -1 && this.f53183m == -1) {
            return -1;
        }
        int i12 = 0;
        if (i11 == 1) {
            i10 = 1;
        } else {
            i10 = 0;
        }
        if (this.f53183m == 1) {
            i12 = 2;
        }
        return i10 | i12;
    }

    public boolean j() {
        return this.f53179i;
    }

    public boolean k() {
        return this.f53177g;
    }

    public boolean l() {
        if (this.f53180j == 1) {
            return true;
        }
        return false;
    }

    public boolean m() {
        if (this.f53181k == 1) {
            return true;
        }
        return false;
    }

    public c n(int i10) {
        this.f53178h = i10;
        this.f53179i = true;
        return this;
    }

    public c o(boolean z10) {
        this.f53182l = z10 ? 1 : 0;
        return this;
    }

    public c p(boolean z10) {
        this.f53187q = z10;
        return this;
    }

    public c q(int i10) {
        this.f53176f = i10;
        this.f53177g = true;
        return this;
    }

    public c r(@Nullable String str) {
        String e10;
        if (str == null) {
            e10 = null;
        } else {
            e10 = h7.a.e(str);
        }
        this.f53175e = e10;
        return this;
    }

    public c s(float f10) {
        this.f53185o = f10;
        return this;
    }

    public c t(int i10) {
        this.f53184n = i10;
        return this;
    }

    public c u(boolean z10) {
        this.f53183m = z10 ? 1 : 0;
        return this;
    }

    public c v(int i10) {
        this.f53186p = i10;
        return this;
    }

    public void w(String[] strArr) {
        this.f53173c = new HashSet(Arrays.asList(strArr));
    }

    public void x(String str) {
        this.f53171a = str;
    }

    public void y(String str) {
        this.f53172b = str;
    }

    public void z(String str) {
        this.f53174d = str;
    }
}
