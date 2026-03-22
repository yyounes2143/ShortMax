package ao;

import androidx.annotation.Nullable;
/* compiled from: SeekMap.java */
/* loaded from: classes8.dex */
public interface j0 {

    /* compiled from: SeekMap.java */
    /* loaded from: classes8.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final k0 f1856a;

        /* renamed from: b  reason: collision with root package name */
        public final k0 f1857b;

        public a(k0 k0Var) {
            this(k0Var, k0Var);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f1856a.equals(aVar.f1856a) && this.f1857b.equals(aVar.f1857b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f1856a.hashCode() * 31) + this.f1857b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f1856a);
            if (this.f1856a.equals(this.f1857b)) {
                str = "";
            } else {
                str = ", " + this.f1857b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }

        public a(k0 k0Var, k0 k0Var2) {
            this.f1856a = (k0) cn.a.e(k0Var);
            this.f1857b = (k0) cn.a.e(k0Var2);
        }
    }

    /* compiled from: SeekMap.java */
    /* loaded from: classes8.dex */
    public static class b implements j0 {

        /* renamed from: a  reason: collision with root package name */
        private final long f1858a;

        /* renamed from: b  reason: collision with root package name */
        private final a f1859b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override // ao.j0
        public long getDurationUs() {
            return this.f1858a;
        }

        @Override // ao.j0
        public a getSeekPoints(long j10) {
            return this.f1859b;
        }

        @Override // ao.j0
        public boolean isSeekable() {
            return false;
        }

        public b(long j10, long j11) {
            this.f1858a = j10;
            this.f1859b = new a(j11 == 0 ? k0.f1860c : new k0(0L, j11));
        }
    }

    long getDurationUs();

    a getSeekPoints(long j10);

    boolean isSeekable();
}
