package ms;

import com.inmobi.commons.core.configs.AdConfig;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UByte.kt */
@Metadata
/* loaded from: classes8.dex */
public final class l implements Comparable<l> {
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    public static final a f62633b = new a(null);

    /* renamed from: a  reason: collision with root package name */
    private final byte f62634a;

    /* compiled from: UByte.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private /* synthetic */ l(byte b10) {
        this.f62634a = b10;
    }

    public static final /* synthetic */ l a(byte b10) {
        return new l(b10);
    }

    public static boolean c(byte b10, Object obj) {
        if (!(obj instanceof l) || b10 != ((l) obj).g()) {
            return false;
        }
        return true;
    }

    public static int e(byte b10) {
        return Byte.hashCode(b10);
    }

    @NotNull
    public static String f(byte b10) {
        return String.valueOf(b10 & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(l lVar) {
        return Intrinsics.compare(g() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED, lVar.g() & AdConfig.NETWORK_LOAD_LIMIT_DISABLED);
    }

    public boolean equals(Object obj) {
        return c(this.f62634a, obj);
    }

    public final /* synthetic */ byte g() {
        return this.f62634a;
    }

    public int hashCode() {
        return e(this.f62634a);
    }

    @NotNull
    public String toString() {
        return f(this.f62634a);
    }

    public static byte b(byte b10) {
        return b10;
    }
}
