package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import androidx.core.os.OutcomeReceiverKt;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MeasurementManagerImplCommon.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4$1$1", f = "MeasurementManagerImplCommon.kt", l = {131}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nMeasurementManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,130:1\n314#2,11:131\n*S KotlinDebug\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1\n*L\n96#1:131,11\n*E\n"})
/* loaded from: classes2.dex */
public final class MeasurementManagerImplCommon$registerSource$4$1$1 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ SourceRegistrationRequest $request;
    final /* synthetic */ Uri $uri;
    Object L$0;
    Object L$1;
    Object L$2;
    int label;
    final /* synthetic */ MeasurementManagerImplCommon this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerImplCommon$registerSource$4$1$1(MeasurementManagerImplCommon measurementManagerImplCommon, Uri uri, SourceRegistrationRequest sourceRegistrationRequest, rs.c<? super MeasurementManagerImplCommon$registerSource$4$1$1> cVar) {
        super(2, cVar);
        this.this$0 = measurementManagerImplCommon;
        this.$uri = uri;
        this.$request = sourceRegistrationRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new MeasurementManagerImplCommon$registerSource$4$1$1(this.this$0, this.$uri, this.$request, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MeasurementManagerImplCommon$registerSource$4$1$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                SourceRegistrationRequest sourceRegistrationRequest = (SourceRegistrationRequest) this.L$2;
                Uri uri = (Uri) this.L$1;
                MeasurementManagerImplCommon measurementManagerImplCommon = (MeasurementManagerImplCommon) this.L$0;
                kotlin.f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            kotlin.f.b(obj);
            MeasurementManagerImplCommon measurementManagerImplCommon2 = this.this$0;
            Uri uri2 = this.$uri;
            SourceRegistrationRequest sourceRegistrationRequest2 = this.$request;
            this.L$0 = measurementManagerImplCommon2;
            this.L$1 = uri2;
            this.L$2 = sourceRegistrationRequest2;
            this.label = 1;
            kotlinx.coroutines.e eVar = new kotlinx.coroutines.e(kotlin.coroutines.intrinsics.a.c(this), 1);
            eVar.H();
            measurementManagerImplCommon2.getMMeasurementManager().registerSource(uri2, sourceRegistrationRequest2.getInputEvent(), new androidx.credentials.a(), OutcomeReceiverKt.asOutcomeReceiver(eVar));
            Object B = eVar.B();
            if (B == kotlin.coroutines.intrinsics.a.f()) {
                kotlin.coroutines.jvm.internal.f.c(this);
            }
            if (B == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
