package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineExceptionHandlerImpl.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DiagnosticCoroutineContextException extends RuntimeException {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final transient CoroutineContext f61817a;

    public DiagnosticCoroutineContextException(@NotNull CoroutineContext coroutineContext) {
        this.f61817a = coroutineContext;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    @NotNull
    public String getLocalizedMessage() {
        return String.valueOf(this.f61817a);
    }
}
