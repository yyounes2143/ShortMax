package androidx.room;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.InvalidationTracker$addObserver$1", f = "InvalidationTracker.android.kt", l = {253}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class InvalidationTracker$addObserver$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    int label;
    final /* synthetic */ InvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InvalidationTracker$addObserver$1(InvalidationTracker invalidationTracker, rs.c<? super InvalidationTracker$addObserver$1> cVar) {
        super(2, cVar);
        this.this$0 = invalidationTracker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new InvalidationTracker$addObserver$1(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((InvalidationTracker$addObserver$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TriggerBasedInvalidationTracker triggerBasedInvalidationTracker;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            triggerBasedInvalidationTracker = this.this$0.implementation;
            this.label = 1;
            if (triggerBasedInvalidationTracker.syncTriggers$room_runtime(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
