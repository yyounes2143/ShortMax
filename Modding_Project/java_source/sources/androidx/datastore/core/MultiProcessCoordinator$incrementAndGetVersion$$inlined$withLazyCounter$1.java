package androidx.datastore.core;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: MultiProcessCoordinator.android.kt */
@Metadata
@d(c = "androidx.datastore.core.MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1", f = "MultiProcessCoordinator.android.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nMultiProcessCoordinator.android.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator$withLazyCounter$2\n+ 2 MultiProcessCoordinator.android.kt\nandroidx/datastore/core/MultiProcessCoordinator\n*L\n1#1,205:1\n106#2:206\n*E\n"})
/* loaded from: classes2.dex */
public final class MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1 extends SuspendLambda implements Function2<g0, c<? super Integer>, Object> {
    int label;
    final /* synthetic */ MultiProcessCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(MultiProcessCoordinator multiProcessCoordinator, c cVar) {
        super(2, cVar);
        this.this$0 = multiProcessCoordinator;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Integer> cVar) {
        return ((MultiProcessCoordinator$incrementAndGetVersion$$inlined$withLazyCounter$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        SharedCounter sharedCounter;
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            sharedCounter = this.this$0.getSharedCounter();
            return kotlin.coroutines.jvm.internal.a.d(sharedCounter.incrementAndGetValue());
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
