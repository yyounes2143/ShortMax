package kotlin;

import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Result.kt */
@Metadata
@SourceDebugExtension({"SMAP\nResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Result.kt\nkotlin/ResultKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,340:1\n1#2:341\n*E\n"})
/* loaded from: classes8.dex */
public final class f {
    @NotNull
    public static final Object a(@NotNull Throwable exception) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        return new Result.Failure(exception);
    }

    public static final void b(@NotNull Object obj) {
        if (!(obj instanceof Result.Failure)) {
            return;
        }
        throw ((Result.Failure) obj).f60903a;
    }
}
