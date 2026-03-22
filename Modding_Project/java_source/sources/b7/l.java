package b7;

import android.util.SparseBooleanArray;
import androidx.annotation.Nullable;
/* compiled from: FlagSet.java */
/* loaded from: classes4.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    private final SparseBooleanArray f2468a;

    /* compiled from: FlagSet.java */
    /* loaded from: classes4.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        private final SparseBooleanArray f2469a = new SparseBooleanArray();

        /* renamed from: b  reason: collision with root package name */
        private boolean f2470b;

        public b a(int i10) {
            b7.a.g(!this.f2470b);
            this.f2469a.append(i10, true);
            return this;
        }

        public b b(l lVar) {
            for (int i10 = 0; i10 < lVar.d(); i10++) {
                a(lVar.c(i10));
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

        public l e() {
            b7.a.g(!this.f2470b);
            this.f2470b = true;
            return new l(this.f2469a);
        }
    }

    public boolean a(int i10) {
        return this.f2468a.get(i10);
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
        b7.a.c(i10, 0, d());
        return this.f2468a.keyAt(i10);
    }

    public int d() {
        return this.f2468a.size();
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (s0.f2506a < 24) {
            if (d() != lVar.d()) {
                return false;
            }
            for (int i10 = 0; i10 < d(); i10++) {
                if (c(i10) != lVar.c(i10)) {
                    return false;
                }
            }
            return true;
        }
        return this.f2468a.equals(lVar.f2468a);
    }

    public int hashCode() {
        if (s0.f2506a < 24) {
            int d10 = d();
            for (int i10 = 0; i10 < d(); i10++) {
                d10 = (d10 * 31) + c(i10);
            }
            return d10;
        }
        return this.f2468a.hashCode();
    }

    private l(SparseBooleanArray sparseBooleanArray) {
        this.f2468a = sparseBooleanArray;
    }
}
