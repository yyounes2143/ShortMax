package androidx.compose.runtime.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: PlatformOptimizedCancellationException.jvm.kt */
@StabilityInferred(parameters = 0)
@Metadata
/* loaded from: classes.dex */
public abstract class PlatformOptimizedCancellationException extends CancellationException {
    public static final int $stable = 8;

    public PlatformOptimizedCancellationException() {
        this(null, 1, null);
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        StackTraceElement[] stackTraceElementArr;
        stackTraceElementArr = PlatformOptimizedCancellationException_jvmKt.EmptyStackTraceElements;
        setStackTrace(stackTraceElementArr);
        return this;
    }

    public PlatformOptimizedCancellationException(@Nullable String str) {
        super(str);
    }

    public /* synthetic */ PlatformOptimizedCancellationException(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? null : str);
    }
}
