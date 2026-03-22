package kotlin.coroutines.jvm.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: DebugProbes.kt */
@Metadata
/* loaded from: classes8.dex */
public final class f {
    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <T> rs.c<T> a(@NotNull rs.c<? super T> completion) {
        Intrinsics.checkNotNullParameter(completion, "completion");
        return completion;
    }

    public static final void b(@NotNull rs.c<?> frame) {
        Intrinsics.checkNotNullParameter(frame, "frame");
    }

    public static final void c(@NotNull rs.c<?> frame) {
        Intrinsics.checkNotNullParameter(frame, "frame");
    }
}
