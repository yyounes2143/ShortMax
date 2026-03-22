package androidx.privacysandbox.ads.adservices.java.measurement;

import androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures;
import androidx.privacysandbox.ads.adservices.measurement.DeletionRequest;
import androidx.privacysandbox.ads.adservices.measurement.MeasurementManager;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import rs.c;
/* compiled from: MeasurementManagerFutures.kt */
@Metadata
@d(c = "androidx.privacysandbox.ads.adservices.java.measurement.MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1", f = "MeasurementManagerFutures.kt", l = {132}, m = "invokeSuspend")
/* loaded from: classes2.dex */
final class MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    final /* synthetic */ DeletionRequest $deletionRequest;
    int label;
    final /* synthetic */ MeasurementManagerFutures.Api33Ext5JavaImpl this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(MeasurementManagerFutures.Api33Ext5JavaImpl api33Ext5JavaImpl, DeletionRequest deletionRequest, c<? super MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1> cVar) {
        super(2, cVar);
        this.this$0 = api33Ext5JavaImpl;
        this.$deletionRequest = deletionRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final c<Unit> create(Object obj, c<?> cVar) {
        return new MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1(this.this$0, this.$deletionRequest, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, c<? super Unit> cVar) {
        return ((MeasurementManagerFutures$Api33Ext5JavaImpl$deleteRegistrationsAsync$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        MeasurementManager measurementManager;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            measurementManager = this.this$0.mMeasurementManager;
            DeletionRequest deletionRequest = this.$deletionRequest;
            this.label = 1;
            if (measurementManager.deleteRegistrations(deletionRequest, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
