package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: FlowExceptions.kt */
@Metadata
/* loaded from: classes8.dex */
public final class AbortFlowException extends CancellationException {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    public final transient Object f61702a;

    public AbortFlowException(@NotNull Object obj) {
        super("Flow was aborted, no more elements needed");
        this.f61702a = obj;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
