package com.unity3d.ads.gatewayclient;

import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonGatewayClient.kt */
@Metadata
@d(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient", f = "CommonGatewayClient.kt", l = {75, 81, 105}, m = "executeWithRetry")
/* loaded from: classes7.dex */
public final class CommonGatewayClient$executeWithRetry$1 extends ContinuationImpl {
    int I$0;
    long J$0;
    long J$1;
    Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    Object L$4;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonGatewayClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonGatewayClient$executeWithRetry$1(CommonGatewayClient commonGatewayClient, c<? super CommonGatewayClient$executeWithRetry$1> cVar) {
        super(cVar);
        this.this$0 = commonGatewayClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object executeWithRetry;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        executeWithRetry = this.this$0.executeWithRetry(null, null, null, null, this);
        return executeWithRetry;
    }
}
