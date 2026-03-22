package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.a;
import org.jetbrains.annotations.NotNull;
/* compiled from: TimeSource.kt */
@Metadata
/* loaded from: classes8.dex */
public final class h implements et.b {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public static final h f61257a = new h();

    private h() {
    }

    @Override // et.b
    public /* bridge */ /* synthetic */ kotlin.time.a a() {
        return a.b(b());
    }

    public long b() {
        return g.f61255a.d();
    }

    @NotNull
    public String toString() {
        return g.f61255a.toString();
    }

    /* compiled from: TimeSource.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a implements kotlin.time.a {

        /* renamed from: a  reason: collision with root package name */
        private final long f61258a;

        private /* synthetic */ a(long j10) {
            this.f61258a = j10;
        }

        public static final /* synthetic */ a b(long j10) {
            return new a(j10);
        }

        public static long f(long j10) {
            return g.f61255a.c(j10);
        }

        public static boolean g(long j10, Object obj) {
            if (!(obj instanceof a) || j10 != ((a) obj).l()) {
                return false;
            }
            return true;
        }

        public static int h(long j10) {
            return Long.hashCode(j10);
        }

        public static final long i(long j10, long j11) {
            return g.f61255a.b(j10, j11);
        }

        public static long j(long j10, @NotNull kotlin.time.a other) {
            Intrinsics.checkNotNullParameter(other, "other");
            if (other instanceof a) {
                return i(j10, ((a) other).l());
            }
            throw new IllegalArgumentException("Subtracting or comparing time marks from different time sources is not possible: " + ((Object) k(j10)) + " and " + other);
        }

        public static String k(long j10) {
            return "ValueTimeMark(reading=" + j10 + ')';
        }

        @Override // kotlin.time.TimeMark
        public long a() {
            return f(this.f61258a);
        }

        @Override // java.lang.Comparable
        /* renamed from: c */
        public int compareTo(@NotNull kotlin.time.a aVar) {
            return a.C0854a.a(this, aVar);
        }

        @Override // kotlin.time.a
        public long d(@NotNull kotlin.time.a other) {
            Intrinsics.checkNotNullParameter(other, "other");
            return j(this.f61258a, other);
        }

        public boolean equals(Object obj) {
            return g(this.f61258a, obj);
        }

        public int hashCode() {
            return h(this.f61258a);
        }

        public final /* synthetic */ long l() {
            return this.f61258a;
        }

        public String toString() {
            return k(this.f61258a);
        }

        public static long e(long j10) {
            return j10;
        }
    }
}
