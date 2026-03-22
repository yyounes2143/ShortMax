package mt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.UndeliveredElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: OnUndeliveredElement.kt */
@Metadata
/* loaded from: classes8.dex */
public final class u {
    public static final <E> void a(@NotNull Function1<? super E, Unit> function1, E e10, @NotNull CoroutineContext coroutineContext) {
        UndeliveredElementException b10 = b(function1, e10, null);
        if (b10 != null) {
            gt.e0.a(coroutineContext, b10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public static final <E> UndeliveredElementException b(@NotNull Function1<? super E, Unit> function1, E e10, @Nullable UndeliveredElementException undeliveredElementException) {
        try {
            function1.invoke(e10);
        } catch (Throwable th2) {
            if (undeliveredElementException != null && undeliveredElementException.getCause() != th2) {
                ms.d.a(undeliveredElementException, th2);
            } else {
                return new UndeliveredElementException("Exception in undelivered element handler for " + e10, th2);
            }
        }
        return undeliveredElementException;
    }

    public static /* synthetic */ UndeliveredElementException c(Function1 function1, Object obj, UndeliveredElementException undeliveredElementException, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            undeliveredElementException = null;
        }
        return b(function1, obj, undeliveredElementException);
    }
}
