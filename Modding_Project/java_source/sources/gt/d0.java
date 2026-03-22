package gt;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: CoroutineExceptionHandler.kt */
@Metadata
/* loaded from: classes8.dex */
public interface d0 extends CoroutineContext.Element {
    @NotNull
    public static final b D8 = b.f52532a;

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static <R> R a(@NotNull d0 d0Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.a.a(d0Var, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E b(@NotNull d0 d0Var, @NotNull CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.Element.a.b(d0Var, bVar);
        }

        @NotNull
        public static CoroutineContext c(@NotNull d0 d0Var, @NotNull CoroutineContext.b<?> bVar) {
            return CoroutineContext.Element.a.c(d0Var, bVar);
        }

        @NotNull
        public static CoroutineContext d(@NotNull d0 d0Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.a.d(d0Var, coroutineContext);
        }
    }

    /* compiled from: CoroutineExceptionHandler.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements CoroutineContext.b<d0> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f52532a = new b();

        private b() {
        }
    }

    void handleException(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th2);
}
