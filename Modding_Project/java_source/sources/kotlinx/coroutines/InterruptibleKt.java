package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Interruptible.kt */
@Metadata
/* loaded from: classes8.dex */
public final class InterruptibleKt {
    @Nullable
    public static final <T> Object b(@NotNull CoroutineContext coroutineContext, @NotNull Function0<? extends T> function0, @NotNull rs.c<? super T> cVar) {
        return gt.e.g(coroutineContext, new InterruptibleKt$runInterruptible$2(function0, null), cVar);
    }

    public static /* synthetic */ Object c(CoroutineContext coroutineContext, Function0 function0, rs.c cVar, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.f61040a;
        }
        return b(coroutineContext, function0, cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T d(CoroutineContext coroutineContext, Function0<? extends T> function0) {
        try {
            y yVar = new y();
            yVar.A(t.m(coroutineContext));
            T invoke = function0.invoke();
            yVar.x();
            return invoke;
        } catch (InterruptedException e10) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e10);
        }
    }
}
