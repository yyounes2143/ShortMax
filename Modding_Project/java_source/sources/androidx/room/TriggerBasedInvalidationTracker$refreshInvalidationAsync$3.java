package androidx.room;

import com.ss.ttm.player.MediaPlayer;
import gt.g0;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: InvalidationTracker.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.TriggerBasedInvalidationTracker$refreshInvalidationAsync$3", f = "InvalidationTracker.kt", l = {MediaPlayer.MEDIA_PLAYER_OPTION_QUIC_MIN_RECEIVED_BEFORE_ACK_DECIMATION}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class TriggerBasedInvalidationTracker$refreshInvalidationAsync$3 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ Function0<Unit> $onRefreshCompleted;
    int label;
    final /* synthetic */ TriggerBasedInvalidationTracker this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Function0<Unit> function0, rs.c<? super TriggerBasedInvalidationTracker$refreshInvalidationAsync$3> cVar) {
        super(2, cVar);
        this.this$0 = triggerBasedInvalidationTracker;
        this.$onRefreshCompleted = function0;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this.this$0, this.$onRefreshCompleted, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((TriggerBasedInvalidationTracker$refreshInvalidationAsync$3) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    kotlin.f.b(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.this$0;
                this.label = 1;
                obj = triggerBasedInvalidationTracker.notifyInvalidation(this);
                if (obj == f10) {
                    return f10;
                }
            }
            Set set = (Set) obj;
            this.$onRefreshCompleted.invoke();
            return Unit.f60915a;
        } catch (Throwable th2) {
            this.$onRefreshCompleted.invoke();
            throw th2;
        }
    }
}
