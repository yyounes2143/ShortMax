package b6;

import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import b7.g0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Atom.java */
/* loaded from: classes4.dex */
abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public final int f2263a;

    /* compiled from: Atom.java */
    /* renamed from: b6.a$a  reason: collision with other inner class name */
    /* loaded from: classes4.dex */
    static final class C0076a extends a {

        /* renamed from: b  reason: collision with root package name */
        public final long f2264b;

        /* renamed from: c  reason: collision with root package name */
        public final List<b> f2265c;

        /* renamed from: d  reason: collision with root package name */
        public final List<C0076a> f2266d;

        public C0076a(int i10, long j10) {
            super(i10);
            this.f2264b = j10;
            this.f2265c = new ArrayList();
            this.f2266d = new ArrayList();
        }

        public void d(C0076a c0076a) {
            this.f2266d.add(c0076a);
        }

        public void e(b bVar) {
            this.f2265c.add(bVar);
        }

        @Nullable
        public C0076a f(int i10) {
            int size = this.f2266d.size();
            for (int i11 = 0; i11 < size; i11++) {
                C0076a c0076a = this.f2266d.get(i11);
                if (c0076a.f2263a == i10) {
                    return c0076a;
                }
            }
            return null;
        }

        @Nullable
        public b g(int i10) {
            int size = this.f2265c.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = this.f2265c.get(i11);
                if (bVar.f2263a == i10) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // b6.a
        public String toString() {
            return a.a(this.f2263a) + " leaves: " + Arrays.toString(this.f2265c.toArray()) + " containers: " + Arrays.toString(this.f2266d.toArray());
        }
    }

    /* compiled from: Atom.java */
    /* loaded from: classes4.dex */
    static final class b extends a {

        /* renamed from: b  reason: collision with root package name */
        public final g0 f2267b;

        public b(int i10, g0 g0Var) {
            super(i10);
            this.f2267b = g0Var;
        }
    }

    public a(int i10) {
        this.f2263a = i10;
    }

    public static String a(int i10) {
        return "" + ((char) ((i10 >> 24) & 255)) + ((char) ((i10 >> 16) & 255)) + ((char) ((i10 >> 8) & 255)) + ((char) (i10 & 255));
    }

    public static int b(int i10) {
        return i10 & ViewCompat.MEASURED_SIZE_MASK;
    }

    public static int c(int i10) {
        return (i10 >> 24) & 255;
    }

    public String toString() {
        return a(this.f2263a);
    }
}
