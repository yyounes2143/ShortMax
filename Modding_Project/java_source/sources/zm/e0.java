package zm;

import androidx.annotation.Nullable;
import cn.m0;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Tracks.java */
/* loaded from: classes8.dex */
public final class e0 {

    /* renamed from: b  reason: collision with root package name */
    public static final e0 f71916b = new e0(ImmutableList.A());

    /* renamed from: c  reason: collision with root package name */
    private static final String f71917c = m0.C0(0);

    /* renamed from: a  reason: collision with root package name */
    private final ImmutableList<a> f71918a;

    /* compiled from: Tracks.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: f  reason: collision with root package name */
        private static final String f71919f = m0.C0(0);

        /* renamed from: g  reason: collision with root package name */
        private static final String f71920g = m0.C0(1);

        /* renamed from: h  reason: collision with root package name */
        private static final String f71921h = m0.C0(3);

        /* renamed from: i  reason: collision with root package name */
        private static final String f71922i = m0.C0(4);

        /* renamed from: a  reason: collision with root package name */
        public final int f71923a;

        /* renamed from: b  reason: collision with root package name */
        private final b0 f71924b;

        /* renamed from: c  reason: collision with root package name */
        private final boolean f71925c;

        /* renamed from: d  reason: collision with root package name */
        private final int[] f71926d;

        /* renamed from: e  reason: collision with root package name */
        private final boolean[] f71927e;

        public a(b0 b0Var, boolean z10, int[] iArr, boolean[] zArr) {
            boolean z11;
            int i10 = b0Var.f71809a;
            this.f71923a = i10;
            boolean z12 = false;
            if (i10 == iArr.length && i10 == zArr.length) {
                z11 = true;
            } else {
                z11 = false;
            }
            cn.a.a(z11);
            this.f71924b = b0Var;
            if (z10 && i10 > 1) {
                z12 = true;
            }
            this.f71925c = z12;
            this.f71926d = (int[]) iArr.clone();
            this.f71927e = (boolean[]) zArr.clone();
        }

        public b0 a() {
            return this.f71924b;
        }

        public io.bidmachine.media3.common.a b(int i10) {
            return this.f71924b.a(i10);
        }

        public int c() {
            return this.f71924b.f71811c;
        }

        public boolean d() {
            return this.f71925c;
        }

        public boolean e() {
            return com.google.common.primitives.a.a(this.f71927e, true);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f71925c == aVar.f71925c && this.f71924b.equals(aVar.f71924b) && Arrays.equals(this.f71926d, aVar.f71926d) && Arrays.equals(this.f71927e, aVar.f71927e)) {
                return true;
            }
            return false;
        }

        public boolean f(boolean z10) {
            for (int i10 = 0; i10 < this.f71926d.length; i10++) {
                if (i(i10, z10)) {
                    return true;
                }
            }
            return false;
        }

        public boolean g(int i10) {
            return this.f71927e[i10];
        }

        public boolean h(int i10) {
            return i(i10, false);
        }

        public int hashCode() {
            return (((((this.f71924b.hashCode() * 31) + (this.f71925c ? 1 : 0)) * 31) + Arrays.hashCode(this.f71926d)) * 31) + Arrays.hashCode(this.f71927e);
        }

        public boolean i(int i10, boolean z10) {
            int i11 = this.f71926d[i10];
            if (i11 != 4 && (!z10 || i11 != 3)) {
                return false;
            }
            return true;
        }
    }

    public e0(List<a> list) {
        this.f71918a = ImmutableList.u(list);
    }

    public ImmutableList<a> a() {
        return this.f71918a;
    }

    public boolean b() {
        return this.f71918a.isEmpty();
    }

    public boolean c(int i10) {
        for (int i11 = 0; i11 < this.f71918a.size(); i11++) {
            a aVar = this.f71918a.get(i11);
            if (aVar.e() && aVar.c() == i10) {
                return true;
            }
        }
        return false;
    }

    public boolean d(int i10) {
        return e(i10, false);
    }

    public boolean e(int i10, boolean z10) {
        for (int i11 = 0; i11 < this.f71918a.size(); i11++) {
            if (this.f71918a.get(i11).c() == i10 && this.f71918a.get(i11).f(z10)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && e0.class == obj.getClass()) {
            return this.f71918a.equals(((e0) obj).f71918a);
        }
        return false;
    }

    public int hashCode() {
        return this.f71918a.hashCode();
    }
}
