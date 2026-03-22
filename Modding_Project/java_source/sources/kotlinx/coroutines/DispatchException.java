package kotlinx.coroutines;

import gt.c0;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
/* compiled from: DispatchedTask.kt */
@Metadata
/* loaded from: classes8.dex */
public final class DispatchException extends Exception {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final Throwable f61277a;

    public DispatchException(@NotNull Throwable th2, @NotNull c0 c0Var, @NotNull CoroutineContext coroutineContext) {
        super("Coroutine dispatcher " + c0Var + " threw an exception, context = " + coroutineContext, th2);
        this.f61277a = th2;
    }

    @Override // java.lang.Throwable
    @NotNull
    public Throwable getCause() {
        return this.f61277a;
    }
}
