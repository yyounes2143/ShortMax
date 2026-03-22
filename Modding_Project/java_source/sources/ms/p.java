package ms;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: ULong.kt */
@Metadata
/* loaded from: classes8.dex */
public final class p implements Comparable<p> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f62643b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final long f62644a;

    /* compiled from: ULong.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ p(long j10) {
        this.f62644a = j10;
    }

    public static final /* synthetic */ p a(long j10) {
        return new p(j10);
    }

    public static boolean c(long j10, Object obj) {
        if (!(obj instanceof p) || j10 != ((p) obj).g()) {
            return false;
        }
        return true;
    }

    public static int e(long j10) {
        return Long.hashCode(j10);
    }

    @NotNull
    public static String f(long j10) {
        return u.f(j10, 10);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(p pVar) {
        return u.d(g(), pVar.g());
    }

    public boolean equals(Object obj) {
        return c(this.f62644a, obj);
    }

    public final /* synthetic */ long g() {
        return this.f62644a;
    }

    public int hashCode() {
        return e(this.f62644a);
    }

    @NotNull
    public String toString() {
        return f(this.f62644a);
    }

    public static long b(long j10) {
        return j10;
    }
}
