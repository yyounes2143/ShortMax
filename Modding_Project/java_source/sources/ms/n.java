package ms;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: UInt.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n implements Comparable<n> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f62638b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final int f62639a;

    /* compiled from: UInt.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ n(int i10) {
        this.f62639a = i10;
    }

    public static final /* synthetic */ n a(int i10) {
        return new n(i10);
    }

    public static boolean c(int i10, Object obj) {
        if (!(obj instanceof n) || i10 != ((n) obj).g()) {
            return false;
        }
        return true;
    }

    public static int e(int i10) {
        return Integer.hashCode(i10);
    }

    @NotNull
    public static String f(int i10) {
        return String.valueOf(i10 & 4294967295L);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(n nVar) {
        return u.b(g(), nVar.g());
    }

    public boolean equals(Object obj) {
        return c(this.f62639a, obj);
    }

    public final /* synthetic */ int g() {
        return this.f62639a;
    }

    public int hashCode() {
        return e(this.f62639a);
    }

    @NotNull
    public String toString() {
        return f(this.f62639a);
    }

    public static int b(int i10) {
        return i10;
    }
}
