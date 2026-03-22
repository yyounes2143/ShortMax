package com.unity3d.ads.gatewayclient;

import com.unity3d.ads.core.data.model.OperationType;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import gt.g0;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonGatewayClient.kt */
@Metadata
@d(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient$request$2", f = "CommonGatewayClient.kt", l = {60}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class CommonGatewayClient$request$2 extends SuspendLambda implements Function2<g0, c<? super UniversalResponseOuterClass.UniversalResponse>, Object> {
    final /* synthetic */ OperationType $operationType;
    final /* synthetic */ UniversalRequestOuterClass.UniversalRequest $request;
    final /* synthetic */ RequestPolicy $requestPolicy;
    final /* synthetic */ String $url;
    int label;
    final /* synthetic */ CommonGatewayClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonGatewayClient$request$2(CommonGatewayClient commonGatewayClient, String str, UniversalRequestOuterClass.UniversalRequest universalRequest, RequestPolicy requestPolicy, OperationType operationType, c<? super CommonGatewayClient$request$2> cVar) {
        super(2, cVar);
        this.this$0 = commonGatewayClient;
        this.$url = str;
        this.$request = universalRequest;
        this.$requestPolicy = requestPolicy;
        this.$operationType = operationType;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new CommonGatewayClient$request$2(this.this$0, this.$url, this.$request, this.$requestPolicy, this.$operationType, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super UniversalResponseOuterClass.UniversalResponse> cVar) {
        return ((CommonGatewayClient$request$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
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
            CommonGatewayClient commonGatewayClient = this.this$0;
            String str = this.$url;
            UniversalRequestOuterClass.UniversalRequest universalRequest = this.$request;
            RequestPolicy requestPolicy = this.$requestPolicy;
            OperationType operationType = this.$operationType;
            this.label = 1;
            obj = commonGatewayClient.executeWithRetry(str, universalRequest, requestPolicy, operationType, this);
            if (obj == f10) {
                return f10;
            }
        }
        return obj;
    }
}
