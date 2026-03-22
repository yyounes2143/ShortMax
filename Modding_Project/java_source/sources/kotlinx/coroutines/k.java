package kotlinx.coroutines;

import gt.a0;
import gt.e0;
import gt.o0;
import gt.w1;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import mt.h0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: DispatchedTask.kt */
@Metadata
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,220:1\n1#2:221\n103#3,10:222\n114#3,2:236\n204#4:232\n205#4:235\n57#5,2:233\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n82#1:222,10\n82#1:236,2\n95#1:232\n95#1:235\n95#1:233,2\n*E\n"})
/* loaded from: classes8.dex */
public abstract class k<T> extends ot.g {

    /* renamed from: c  reason: collision with root package name */
    public int f61825c;

    public k(int i10) {
        this.f61825c = i10;
    }

    @NotNull
    public abstract rs.c<T> c();

    @Nullable
    public Throwable d(@Nullable Object obj) {
        gt.t tVar;
        if (obj instanceof gt.t) {
            tVar = (gt.t) obj;
        } else {
            tVar = null;
        }
        if (tVar == null) {
            return null;
        }
        return tVar.f52556a;
    }

    public final void i(@NotNull Throwable th2) {
        e0.a(c().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th2));
    }

    @Nullable
    public abstract Object j();

    @Override // java.lang.Runnable
    public final void run() {
        w1<?> w1Var;
        try {
            rs.c<T> c10 = c();
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            mt.h hVar = (mt.h) c10;
            rs.c<T> cVar = hVar.f62664e;
            Object obj = hVar.f62666g;
            CoroutineContext context = cVar.getContext();
            Object i10 = h0.i(context, obj);
            r rVar = null;
            if (i10 != h0.f62667a) {
                w1Var = a0.m(cVar, context, i10);
            } else {
                w1Var = null;
            }
            CoroutineContext context2 = cVar.getContext();
            Object j10 = j();
            Throwable d10 = d(j10);
            if (d10 == null && o0.b(this.f61825c)) {
                rVar = (r) context2.get(r.G8);
            }
            if (rVar != null && !rVar.isActive()) {
                CancellationException cancellationException = rVar.getCancellationException();
                a(j10, cancellationException);
                Result.a aVar = Result.f60901b;
                cVar.resumeWith(Result.d(kotlin.f.a(cancellationException)));
            } else if (d10 != null) {
                Result.a aVar2 = Result.f60901b;
                cVar.resumeWith(Result.d(kotlin.f.a(d10)));
            } else {
                Result.a aVar3 = Result.f60901b;
                cVar.resumeWith(Result.d(h(j10)));
            }
            Unit unit = Unit.f60915a;
            if (w1Var == null || w1Var.V0()) {
                h0.f(context, i10);
            }
        } catch (DispatchException e10) {
            e0.a(c().getContext(), e10.getCause());
        } catch (Throwable th2) {
            i(th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T h(@Nullable Object obj) {
        return obj;
    }

    public void a(@Nullable Object obj, @NotNull Throwable th2) {
    }
}
