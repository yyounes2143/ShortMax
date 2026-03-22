package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: Delay.kt */
@Metadata
/* loaded from: classes8.dex */
public interface m0 {

    /* compiled from: Delay.kt */
    @Metadata
    @SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n426#2,11:160\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/Delay$DefaultImpls\n*L\n27#1:160,11\n*E\n"})
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull
        public static s0 a(@NotNull m0 m0Var, long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
            return j0.a().c(j10, runnable, coroutineContext);
        }
    }

    void a(long j10, @NotNull i<? super Unit> iVar);

    @NotNull
    s0 c(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext);
}
