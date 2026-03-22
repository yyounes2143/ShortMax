package mt;

import java.util.Collection;
import java.util.ServiceLoader;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: CoroutineExceptionHandlerImpl.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCoroutineExceptionHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandlerImpl.kt\nkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"})
/* loaded from: classes8.dex */
public final class f {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final Collection<gt.d0> f62661a = kotlin.sequences.j.P(kotlin.sequences.j.e(ServiceLoader.load(gt.d0.class, gt.d0.class.getClassLoader()).iterator()));

    @NotNull
    public static final Collection<gt.d0> a() {
        return f62661a;
    }

    public static final void b(@NotNull Throwable th2) {
        Thread currentThread = Thread.currentThread();
        currentThread.getUncaughtExceptionHandler().uncaughtException(currentThread, th2);
    }
}
