package hs;

import java.nio.ByteBuffer;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BytePacketBuilder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class i extends n {
    public i() {
        this(null, 1, null);
    }

    @Override // hs.n
    @NotNull
    /* renamed from: e0 */
    public i l(char c10) {
        n append = super.append(c10);
        Intrinsics.checkNotNull(append, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (i) append;
    }

    @Override // hs.n
    @NotNull
    /* renamed from: f0 */
    public i m(@Nullable CharSequence charSequence) {
        n append = super.append(charSequence);
        Intrinsics.checkNotNull(append, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (i) append;
    }

    @Override // hs.n
    @NotNull
    /* renamed from: g0 */
    public i o(@Nullable CharSequence charSequence, int i10, int i11) {
        n append = super.append(charSequence, i10, i11);
        Intrinsics.checkNotNull(append, "null cannot be cast to non-null type io.ktor.utils.io.core.BytePacketBuilder");
        return (i) append;
    }

    @NotNull
    public final j h0() {
        int i02 = i0();
        is.a Y = Y();
        if (Y == null) {
            return j.f53232i.a();
        }
        return new j(Y, i02, F());
    }

    public final int i0() {
        return T();
    }

    public final boolean j0() {
        if (T() == 0) {
            return true;
        }
        return false;
    }

    @NotNull
    public String toString() {
        return "BytePacketBuilder[0x" + hashCode() + ']';
    }

    @Override // hs.n
    protected final void v(@NotNull ByteBuffer source, int i10, int i11) {
        Intrinsics.checkNotNullParameter(source, "source");
    }

    public /* synthetic */ i(io.ktor.utils.io.pool.b<is.a> bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? is.a.f60072j.c() : bVar);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(@NotNull io.ktor.utils.io.pool.b<is.a> pool) {
        super(pool);
        Intrinsics.checkNotNullParameter(pool, "pool");
    }

    @Override // hs.n
    protected final void u() {
    }
}
