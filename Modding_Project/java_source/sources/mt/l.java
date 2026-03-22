package mt;

import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: LimitedDispatcher.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcherKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,154:1\n1#2:155\n*E\n"})
/* loaded from: classes8.dex */
public final class l {
    public static final void a(int i10) {
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Expected positive parallelism level, but got " + i10).toString());
    }

    @NotNull
    public static final gt.c0 b(@NotNull gt.c0 c0Var, @Nullable String str) {
        if (str != null) {
            return new t(c0Var, str);
        }
        return c0Var;
    }
}
