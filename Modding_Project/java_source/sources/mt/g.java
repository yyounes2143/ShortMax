package mt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.DiagnosticCoroutineContextException;
import kotlinx.coroutines.internal.ExceptionSuccessfullyProcessed;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandlerImpl.common.kt */
@Metadata
/* loaded from: classes8.dex */
public final class g {
    public static final void a(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2) {
        for (gt.d0 d0Var : f.a()) {
            try {
                d0Var.handleException(coroutineContext, th2);
            } catch (ExceptionSuccessfullyProcessed unused) {
                return;
            } catch (Throwable th3) {
                f.b(gt.e0.b(th2, th3));
            }
        }
        try {
            ms.d.a(th2, new DiagnosticCoroutineContextException(coroutineContext));
        } catch (Throwable unused2) {
        }
        f.b(th2);
    }
}
