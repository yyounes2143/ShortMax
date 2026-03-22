package com.unity3d.ads.gatewayclient;

import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CommonGatewayClient.kt */
@Metadata
@d(c = "com.unity3d.ads.gatewayclient.CommonGatewayClient", f = "CommonGatewayClient.kt", l = {59}, m = AdActivity.REQUEST_KEY_EXTRA)
/* loaded from: classes7.dex */
public final class CommonGatewayClient$request$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ CommonGatewayClient this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CommonGatewayClient$request$1(CommonGatewayClient commonGatewayClient, c<? super CommonGatewayClient$request$1> cVar) {
        super(cVar);
        this.this$0 = commonGatewayClient;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.request(null, null, null, null, this);
    }
}
