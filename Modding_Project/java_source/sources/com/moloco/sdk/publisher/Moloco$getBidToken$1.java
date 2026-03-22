package com.moloco.sdk.publisher;

import com.moloco.sdk.internal.MolocoLogger;
import com.ss.ttvideoengine.log.IVideoEventLogger;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "com.moloco.sdk.publisher.Moloco$getBidToken$1", f = "Moloco.kt", l = {IVideoEventLogger.LOGGER_OPTION_ENGINE_CODE_OPTIMIZATION}, m = "invokeSuspend")
/* loaded from: classes6.dex */
public final class Moloco$getBidToken$1 extends SuspendLambda implements Function2<g0, rs.c<? super Unit>, Object> {
    final /* synthetic */ MolocoBidTokenListener $listener;
    final /* synthetic */ com.moloco.sdk.acm.recorder.a $metricsRecorder;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Moloco$getBidToken$1(com.moloco.sdk.acm.recorder.a aVar, MolocoBidTokenListener molocoBidTokenListener, rs.c<? super Moloco$getBidToken$1> cVar) {
        super(2, cVar);
        this.$metricsRecorder = aVar;
        this.$listener = molocoBidTokenListener;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final rs.c<Unit> create(Object obj, rs.c<?> cVar) {
        return new Moloco$getBidToken$1(this.$metricsRecorder, this.$listener, cVar);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        com.moloco.sdk.internal.services.bidtoken.k bidTokenHandler;
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
            MolocoLogger.info$default(MolocoLogger.INSTANCE, "Moloco", "Handling bid token request", null, false, 12, null);
            bidTokenHandler = Moloco.INSTANCE.getBidTokenHandler();
            com.moloco.sdk.acm.recorder.a aVar = this.$metricsRecorder;
            MolocoBidTokenListener molocoBidTokenListener = this.$listener;
            this.label = 1;
            if (bidTokenHandler.a(aVar, molocoBidTokenListener, this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(g0 g0Var, rs.c<? super Unit> cVar) {
        return ((Moloco$getBidToken$1) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }
}
