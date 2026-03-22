package wr;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: HttpProtocolVersion.kt */
@Metadata
/* loaded from: classes8.dex */
public final class n {
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    public static final a f70203d = new a(null);
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final n f70204e = new n("HTTP", 2, 0);
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final n f70205f = new n("HTTP", 1, 1);
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private static final n f70206g = new n("HTTP", 1, 0);
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final n f70207h = new n("SPDY", 3, 0);
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final n f70208i = new n("QUIC", 1, 0);
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final String f70209a;

    /* renamed from: b  reason: collision with root package name */
    private final int f70210b;

    /* renamed from: c  reason: collision with root package name */
    private final int f70211c;

    /* compiled from: HttpProtocolVersion.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final n a() {
            return n.f70205f;
        }

        private a() {
        }
    }

    public n(@NotNull String name, int i10, int i11) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f70209a = name;
        this.f70210b = i10;
        this.f70211c = i11;
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        if (Intrinsics.areEqual(this.f70209a, nVar.f70209a) && this.f70210b == nVar.f70210b && this.f70211c == nVar.f70211c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((this.f70209a.hashCode() * 31) + Integer.hashCode(this.f70210b)) * 31) + Integer.hashCode(this.f70211c);
    }

    @NotNull
    public String toString() {
        return this.f70209a + '/' + this.f70210b + '.' + this.f70211c;
    }
}
