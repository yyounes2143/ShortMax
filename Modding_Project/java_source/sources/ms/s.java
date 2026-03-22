package ms;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UShort.kt */
@Metadata
/* loaded from: classes8.dex */
public final class s implements Comparable<s> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f62649b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final short f62650a;

    /* compiled from: UShort.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ s(short s10) {
        this.f62650a = s10;
    }

    public static final /* synthetic */ s a(short s10) {
        return new s(s10);
    }

    public static boolean c(short s10, Object obj) {
        if (!(obj instanceof s) || s10 != ((s) obj).g()) {
            return false;
        }
        return true;
    }

    public static int e(short s10) {
        return Short.hashCode(s10);
    }

    @NotNull
    public static String f(short s10) {
        return String.valueOf(s10 & 65535);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(s sVar) {
        return Intrinsics.compare(g() & 65535, sVar.g() & 65535);
    }

    public boolean equals(Object obj) {
        return c(this.f62650a, obj);
    }

    public final /* synthetic */ short g() {
        return this.f62650a;
    }

    public int hashCode() {
        return e(this.f62650a);
    }

    @NotNull
    public String toString() {
        return f(this.f62650a);
    }

    public static short b(short s10) {
        return s10;
    }
}
