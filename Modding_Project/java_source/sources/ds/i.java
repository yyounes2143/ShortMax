package ds;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: StackTraceRecover.kt */
@Metadata
@SourceDebugExtension({"SMAP\nStackTraceRecover.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackTraceRecover.kt\nio/ktor/util/pipeline/StackTraceRecoverKt\n+ 2 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,23:1\n61#2,2:24\n*S KotlinDebug\n*F\n+ 1 StackTraceRecover.kt\nio/ktor/util/pipeline/StackTraceRecoverKt\n*L\n17#1:24,2\n*E\n"})
/* loaded from: classes8.dex */
public final class i {
    @NotNull
    public static final Throwable a(@NotNull Throwable exception, @NotNull rs.c<?> continuation) {
        Intrinsics.checkNotNullParameter(exception, "exception");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        try {
            return h.a(exception, exception.getCause());
        } catch (Throwable unused) {
            return exception;
        }
    }
}
