package androidx.datastore.core;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kt.c;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SingleProcessCoordinator.kt */
@Metadata
@d(c = "androidx.datastore.core.SingleProcessCoordinator$updateNotifications$1", f = "SingleProcessCoordinator.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class SingleProcessCoordinator$updateNotifications$1 extends SuspendLambda implements Function2<c<? super Unit>, rs.c<? super Unit>, Object> {
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingleProcessCoordinator$updateNotifications$1(rs.c<? super SingleProcessCoordinator$updateNotifications$1> cVar) {
        super(2, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final rs.c<Unit> create(@Nullable Object obj, @NotNull rs.c<?> cVar) {
        return new SingleProcessCoordinator$updateNotifications$1(cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            f.b(obj);
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull c<? super Unit> cVar, @Nullable rs.c<? super Unit> cVar2) {
        return ((SingleProcessCoordinator$updateNotifications$1) create(cVar, cVar2)).invokeSuspend(Unit.f60915a);
    }
}
