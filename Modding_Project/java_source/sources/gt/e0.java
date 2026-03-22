package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.DispatchException;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata
/* loaded from: classes8.dex */
public final class e0 {
    public static final void a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        if (th2 instanceof DispatchException) {
            th2 = ((DispatchException) th2).getCause();
        }
        try {
            d0 d0Var = (d0) coroutineContext.get(d0.D8);
            if (d0Var != null) {
                d0Var.handleException(coroutineContext, th2);
            } else {
                mt.g.a(coroutineContext, th2);
            }
        } catch (Throwable th3) {
            mt.g.a(coroutineContext, b(th2, th3));
        }
    }

    @NotNull
    public static final Throwable b(@NotNull Throwable th2, @NotNull Throwable th3) {
        if (th2 == th3) {
            return th2;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th3);
        ms.d.a(runtimeException, th2);
        return runtimeException;
    }
}
