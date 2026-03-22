package androidx.room.support;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoCloser.android.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.room.support.AutoCloser$decrementCountAndScheduleClose$2", f = "AutoCloser.android.kt", l = {167}, m = "invokeSuspend")
/* loaded from: classes2.dex */
public final class AutoCloser$decrementCountAndScheduleClose$2 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AutoCloser this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AutoCloser$decrementCountAndScheduleClose$2(AutoCloser autoCloser, rs.c<? super AutoCloser$decrementCountAndScheduleClose$2> cVar) {
        super(2, cVar);
        this.this$0 = autoCloser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new AutoCloser$decrementCountAndScheduleClose$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((AutoCloser$decrementCountAndScheduleClose$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        long j10;
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
            j10 = this.this$0.autoCloseTimeoutInMs;
            this.label = 1;
            if (DelayKt.b(j10, this) == f10) {
                return f10;
            }
        }
        this.this$0.autoCloseDatabase();
        return Unit.f60915a;
    }
}
