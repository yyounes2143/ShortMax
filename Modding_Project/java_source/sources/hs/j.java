package hs;

import is.a;
import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ByteReadPacket.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j extends l {
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    public static final a f53232i = new a(null);
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private static final j f53233j;

    /* compiled from: ByteReadPacket.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final j a() {
            return j.f53233j;
        }

        private a() {
        }
    }

    static {
        a.d dVar = is.a.f60072j;
        f53233j = new j(dVar.a(), 0L, dVar.b());
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public j(@NotNull is.a head, long j10, @NotNull io.ktor.utils.io.pool.b<is.a> pool) {
        super(head, j10, pool);
        Intrinsics.checkNotNullParameter(head, "head");
        Intrinsics.checkNotNullParameter(pool, "pool");
        b0();
    }

    @NotNull
    public String toString() {
        return "ByteReadPacket[" + hashCode() + ']';
    }

    @Override // hs.l
    @Nullable
    protected final is.a u() {
        return null;
    }

    @Override // hs.l
    protected final int v(@NotNull ByteBuffer destination, int i10, int i11) {
        Intrinsics.checkNotNullParameter(destination, "destination");
        return 0;
    }

    @Override // hs.l
    protected final void l() {
    }
}
