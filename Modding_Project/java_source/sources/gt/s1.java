package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
/* compiled from: ThreadContextElement.kt */
@Metadata
/* loaded from: classes8.dex */
public interface s1<S> extends CoroutineContext.Element {

    /* compiled from: ThreadContextElement.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static <S, R> R a(@NotNull s1<S> s1Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.a.a(s1Var, r10, function2);
        }

        @NotNull
        public static <S> CoroutineContext b(@NotNull s1<S> s1Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.a.d(s1Var, coroutineContext);
        }
    }

    void restoreThreadContext(@NotNull CoroutineContext coroutineContext, S s10);

    S updateThreadContext(@NotNull CoroutineContext coroutineContext);
}
