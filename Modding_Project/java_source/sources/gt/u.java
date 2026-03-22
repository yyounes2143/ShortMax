package gt;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CompletionState.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCompletionState.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,51:1\n1#2:52\n57#3,2:53\n57#3,2:55\n*S KotlinDebug\n*F\n+ 1 CompletionState.kt\nkotlinx/coroutines/CompletionStateKt\n*L\n11#1:53,2\n16#1:55,2\n*E\n"})
/* loaded from: classes8.dex */
public final class u {
    @NotNull
    public static final <T> Object a(@Nullable Object obj, @NotNull rs.c<? super T> cVar) {
        if (obj instanceof t) {
            Result.a aVar = Result.f60901b;
            return Result.d(kotlin.f.a(((t) obj).f52556a));
        }
        return Result.d(obj);
    }

    @Nullable
    public static final <T> Object b(@NotNull Object obj) {
        Throwable g10 = Result.g(obj);
        if (g10 != null) {
            return new t(g10, false, 2, null);
        }
        return obj;
    }

    @Nullable
    public static final <T> Object c(@NotNull Object obj, @NotNull i<?> iVar) {
        Throwable g10 = Result.g(obj);
        if (g10 != null) {
            return new t(g10, false, 2, null);
        }
        return obj;
    }
}
