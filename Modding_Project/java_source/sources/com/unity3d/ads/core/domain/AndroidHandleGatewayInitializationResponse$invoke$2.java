package com.unity3d.ads.core.domain;

import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidHandleGatewayInitializationResponse.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidHandleGatewayInitializationResponse$invoke$2", f = "AndroidHandleGatewayInitializationResponse.kt", l = {36}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class AndroidHandleGatewayInitializationResponse$invoke$2 extends SuspendLambda implements Function2<g0, c<? super Unit>, Object> {
    int label;
    final /* synthetic */ AndroidHandleGatewayInitializationResponse this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidHandleGatewayInitializationResponse$invoke$2(AndroidHandleGatewayInitializationResponse androidHandleGatewayInitializationResponse, c<? super AndroidHandleGatewayInitializationResponse$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = androidHandleGatewayInitializationResponse;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidHandleGatewayInitializationResponse$invoke$2(this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super Unit> cVar) {
        return ((AndroidHandleGatewayInitializationResponse$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        TriggerInitializationCompletedRequest triggerInitializationCompletedRequest;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            triggerInitializationCompletedRequest = this.this$0.triggerInitializationCompletedRequest;
            this.label = 1;
            if (triggerInitializationCompletedRequest.invoke(this) == f10) {
                return f10;
            }
        }
        return Unit.f60915a;
    }
}
