package wt;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: ArrayPools.kt */
@Metadata
/* loaded from: classes8.dex */
public final class j extends k {
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    public static final j f70307c = new j();

    private j() {
    }

    public final void c(@NotNull char[] array) {
        Intrinsics.checkNotNullParameter(array, "array");
        a(array);
    }

    @NotNull
    public final char[] d() {
        return super.b(128);
    }
}
