package androidx.privacysandbox.ads.adservices.measurement;

import android.net.Uri;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: MeasurementManagerImplCommon.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4", f = "MeasurementManagerImplCommon.kt", l = {}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nMeasurementManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1855#2,2:131\n*S KotlinDebug\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4\n*L\n94#1:131,2\n*E\n"})
/* loaded from: classes2.dex */
public final class MeasurementManagerImplCommon$registerSource$4 extends SuspendLambda implements Function2<gt.g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ SourceRegistrationRequest $request;
    private /* synthetic */ Object L$0;
    int label;
    final /* synthetic */ MeasurementManagerImplCommon this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MeasurementManagerImplCommon$registerSource$4(SourceRegistrationRequest sourceRegistrationRequest, MeasurementManagerImplCommon measurementManagerImplCommon, rs.c<? super MeasurementManagerImplCommon$registerSource$4> cVar) {
        super(2, cVar);
        this.$request = sourceRegistrationRequest;
        this.this$0 = measurementManagerImplCommon;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        MeasurementManagerImplCommon$registerSource$4 measurementManagerImplCommon$registerSource$4 = new MeasurementManagerImplCommon$registerSource$4(this.$request, this.this$0, cVar);
        measurementManagerImplCommon$registerSource$4.L$0 = obj;
        return measurementManagerImplCommon$registerSource$4;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(gt.g0 g0Var, rs.c<? super Unit> cVar) {
        return ((MeasurementManagerImplCommon$registerSource$4) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        kotlin.coroutines.intrinsics.a.f();
        if (this.label == 0) {
            kotlin.f.b(obj);
            gt.g0 g0Var = (gt.g0) this.L$0;
            MeasurementManagerImplCommon measurementManagerImplCommon = this.this$0;
            SourceRegistrationRequest sourceRegistrationRequest = this.$request;
            for (Uri uri : this.$request.getRegistrationUris()) {
                gt.g.d(g0Var, null, null, new MeasurementManagerImplCommon$registerSource$4$1$1(measurementManagerImplCommon, uri, sourceRegistrationRequest, null), 3, null);
            }
            return Unit.f60915a;
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
