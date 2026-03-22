package io.bidmachine.util.taskmanager.coroutine;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CoroutineTaskManager.kt */
@Metadata
@d(c = "io.bidmachine.util.taskmanager.coroutine.CoroutineTaskManager$scheduleTask$1", f = "CoroutineTaskManager.kt", l = {30}, m = "invokeSuspend")
/* loaded from: classes8.dex */
final class CoroutineTaskManager$scheduleTask$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58687h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58688i;

    /* renamed from: j  reason: collision with root package name */
    final /* synthetic */ long f58689j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ CoroutineTaskManager f58690k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ Runnable f58691l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineTaskManager$scheduleTask$1(long j10, CoroutineTaskManager coroutineTaskManager, Runnable runnable, c<? super CoroutineTaskManager$scheduleTask$1> cVar) {
        super(2, cVar);
        this.f58689j = j10;
        this.f58690k = coroutineTaskManager;
        this.f58691l = runnable;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        CoroutineTaskManager$scheduleTask$1 coroutineTaskManager$scheduleTask$1 = new CoroutineTaskManager$scheduleTask$1(this.f58689j, this.f58690k, this.f58691l, cVar);
        coroutineTaskManager$scheduleTask$1.f58688i = obj;
        return coroutineTaskManager$scheduleTask$1;
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((CoroutineTaskManager$scheduleTask$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object f10 = a.f();
        int i10 = this.f58687h;
        if (i10 != 0) {
            if (i10 == 1) {
                g0 g0Var = (g0) this.f58688i;
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            g0 g0Var2 = (g0) this.f58688i;
            long j10 = this.f58689j;
            if (j10 > 0) {
                this.f58688i = g0Var2;
                this.f58687h = 1;
                if (DelayKt.b(j10, this) == f10) {
                    return f10;
                }
            }
        }
        try {
            this.f58691l.run();
            Unit unit = Unit.f60915a;
        } catch (Throwable unused) {
        }
        this.f58690k.cancel(this.f58691l);
        return Unit.f60915a;
    }
}
