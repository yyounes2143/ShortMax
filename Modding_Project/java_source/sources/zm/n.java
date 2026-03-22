package zm;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
import cn.m0;
/* compiled from: FlagSet.java */
/* loaded from: classes8.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final SparseBooleanArray f71977a;

    /* compiled from: FlagSet.java */
    /* loaded from: classes8.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final SparseBooleanArray f71978a = new SparseBooleanArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f71979b;

        public b a(int i10) {
            cn.a.g(!this.f71979b);
            this.f71978a.append(i10, true);
            return this;
        }

        public b b(n nVar) {
            for (int i10 = 0; i10 < nVar.d(); i10++) {
                a(nVar.c(i10));
            }
            return this;
        }

        public b c(int... iArr) {
            for (int i10 : iArr) {
                a(i10);
            }
            return this;
        }

        public b d(int i10, boolean z10) {
            if (z10) {
                return a(i10);
            }
            return this;
        }

        public n e() {
            cn.a.g(!this.f71979b);
            this.f71979b = true;
            return new n(this.f71978a);
        }
    }

    public boolean a(int i10) {
        return this.f71977a.get(i10);
    }

    public boolean b(int... iArr) {
        for (int i10 : iArr) {
            if (a(i10)) {
                return true;
            }
        }
        return false;
    }

    public int c(int i10) {
        cn.a.c(i10, 0, d());
        return this.f71977a.keyAt(i10);
    }

    public int d() {
        return this.f71977a.size();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (m0.f3614a < 24) {
            if (d() != nVar.d()) {
                return false;
            }
            for (int i10 = 0; i10 < d(); i10++) {
                if (c(i10) != nVar.c(i10)) {
                    return false;
                }
            }
            return true;
        }
        return this.f71977a.equals(nVar.f71977a);
    }

    public int hashCode() {
        if (m0.f3614a < 24) {
            int d10 = d();
            for (int i10 = 0; i10 < d(); i10++) {
                d10 = (d10 * 31) + c(i10);
            }
            return d10;
        }
        return this.f71977a.hashCode();
    }

    private n(SparseBooleanArray sparseBooleanArray) {
        this.f71977a = sparseBooleanArray;
    }
}
