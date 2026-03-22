package gt;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CancellableContinuation.kt */
@Metadata
/* loaded from: classes8.dex */
public interface i<T> extends rs.c<T> {

    /* compiled from: CancellableContinuation.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static /* synthetic */ boolean a(i iVar, Throwable th2, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    th2 = null;
                }
                return iVar.cancel(th2);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }
    }

    boolean cancel(@Nullable Throwable th2);

    @ms.c
    void e(T t10, @Nullable Function1<? super Throwable, Unit> function1);

    void f(@NotNull c0 c0Var, T t10);

    boolean isActive();

    boolean isCompleted();

    @Nullable
    <R extends T> Object r(R r10, @Nullable Object obj, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar);

    void t(@NotNull Object obj);

    void u(@NotNull Function1<? super Throwable, Unit> function1);

    @Nullable
    Object v(@NotNull Throwable th2);

    <R extends T> void y(R r10, @Nullable at.n<? super Throwable, ? super R, ? super CoroutineContext, Unit> nVar);
}
