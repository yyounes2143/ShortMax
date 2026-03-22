package kotlinx.coroutines;

import gt.s0;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.sequences.Sequence;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Job.kt */
@Metadata
/* loaded from: classes8.dex */
public interface r extends CoroutineContext.Element {
    @NotNull
    public static final b G8 = b.f61833a;

    /* compiled from: Job.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b implements CoroutineContext.b<r> {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ b f61833a = new b();

        private b() {
        }
    }

    @NotNull
    gt.n attachChild(@NotNull gt.o oVar);

    @ms.c
    /* synthetic */ void cancel();

    void cancel(@Nullable CancellationException cancellationException);

    @ms.c
    /* synthetic */ boolean cancel(Throwable th2);

    @NotNull
    CancellationException getCancellationException();

    @NotNull
    Sequence<r> getChildren();

    @NotNull
    pt.b getOnJoin();

    @Nullable
    r getParent();

    @NotNull
    s0 invokeOnCompletion(@NotNull Function1<? super Throwable, Unit> function1);

    @NotNull
    s0 invokeOnCompletion(boolean z10, boolean z11, @NotNull Function1<? super Throwable, Unit> function1);

    boolean isActive();

    boolean isCancelled();

    boolean isCompleted();

    @Nullable
    Object join(@NotNull rs.c<? super Unit> cVar);

    @ms.c
    @NotNull
    r plus(@NotNull r rVar);

    boolean start();

    /* compiled from: Job.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        public static /* synthetic */ void b(r rVar, CancellationException cancellationException, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    cancellationException = null;
                }
                rVar.cancel(cancellationException);
                return;
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
        }

        public static <R> R c(@NotNull r rVar, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.a.a(rVar, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E d(@NotNull r rVar, @NotNull CoroutineContext.b<E> bVar) {
            return (E) CoroutineContext.Element.a.b(rVar, bVar);
        }

        public static /* synthetic */ s0 e(r rVar, boolean z10, boolean z11, Function1 function1, int i10, Object obj) {
            if (obj == null) {
                if ((i10 & 1) != 0) {
                    z10 = false;
                }
                if ((i10 & 2) != 0) {
                    z11 = true;
                }
                return rVar.invokeOnCompletion(z10, z11, function1);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }

        @NotNull
        public static CoroutineContext f(@NotNull r rVar, @NotNull CoroutineContext.b<?> bVar) {
            return CoroutineContext.Element.a.c(rVar, bVar);
        }

        @NotNull
        public static CoroutineContext g(@NotNull r rVar, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.a.d(rVar, coroutineContext);
        }

        @ms.c
        @NotNull
        public static r h(@NotNull r rVar, @NotNull r rVar2) {
            return rVar2;
        }
    }
}
