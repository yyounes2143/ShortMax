package t5;

import androidx.annotation.Nullable;
/* compiled from: SeekMap.java */
/* loaded from: classes4.dex */
public interface z {

    /* compiled from: SeekMap.java */
    /* loaded from: classes4.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final a0 f67205a;

        /* renamed from: b  reason: collision with root package name */
        public final a0 f67206b;

        public a(a0 a0Var) {
            this(a0Var, a0Var);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || a.class != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.f67205a.equals(aVar.f67205a) && this.f67206b.equals(aVar.f67206b)) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            return (this.f67205a.hashCode() * 31) + this.f67206b.hashCode();
        }

        public String toString() {
            String str;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("[");
            sb2.append(this.f67205a);
            if (this.f67205a.equals(this.f67206b)) {
                str = "";
            } else {
                str = ", " + this.f67206b;
            }
            sb2.append(str);
            sb2.append("]");
            return sb2.toString();
        }

        public a(a0 a0Var, a0 a0Var2) {
            this.f67205a = (a0) b7.a.e(a0Var);
            this.f67206b = (a0) b7.a.e(a0Var2);
        }
    }

    /* compiled from: SeekMap.java */
    /* loaded from: classes4.dex */
    public static class b implements z {

        /* renamed from: a  reason: collision with root package name */
        private final long f67207a;

        /* renamed from: b  reason: collision with root package name */
        private final a f67208b;

        public b(long j10) {
            this(j10, 0L);
        }

        @Override // t5.z
        public long getDurationUs() {
            return this.f67207a;
        }

        @Override // t5.z
        public a getSeekPoints(long j10) {
            return this.f67208b;
        }

        @Override // t5.z
        public boolean isSeekable() {
            return false;
        }

        public b(long j10, long j11) {
            this.f67207a = j10;
            this.f67208b = new a(j11 == 0 ? a0.f67097c : new a0(0L, j11));
        }
    }

    long getDurationUs();

    a getSeekPoints(long j10);

    boolean isSeekable();
}
