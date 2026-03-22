package com.unity3d.ads.core.domain;

import com.google.protobuf.ByteString;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.ads.gatewayclient.RequestPolicy;
import gatewayprotocol.v1.AdDataRefreshResponseOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AndroidRefresh.kt */
@Metadata
@d(c = "com.unity3d.ads.core.domain.AndroidRefresh$invoke$2", f = "AndroidRefresh.kt", l = {26, 28}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class AndroidRefresh$invoke$2 extends SuspendLambda implements Function2<g0, c<? super AdDataRefreshResponseOuterClass.AdDataRefreshResponse>, Object> {
    final /* synthetic */ ByteString $adDataRefreshToken;
    final /* synthetic */ ByteString $opportunityId;
    int label;
    final /* synthetic */ AndroidRefresh this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AndroidRefresh$invoke$2(AndroidRefresh androidRefresh, ByteString byteString, ByteString byteString2, c<? super AndroidRefresh$invoke$2> cVar) {
        super(2, cVar);
        this.this$0 = androidRefresh;
        this.$adDataRefreshToken = byteString;
        this.$opportunityId = byteString2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new AndroidRefresh$invoke$2(this.this$0, this.$adDataRefreshToken, this.$opportunityId, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super AdDataRefreshResponseOuterClass.AdDataRefreshResponse> cVar) {
        return ((AndroidRefresh$invoke$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        GetAdDataRefreshRequest getAdDataRefreshRequest;
        GetRequestPolicy getRequestPolicy;
        GatewayClient gatewayClient;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return ((UniversalResponseOuterClass.UniversalResponse) obj).getPayload().getAdDataRefreshResponse();
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
        } else {
            f.b(obj);
            getAdDataRefreshRequest = this.this$0.getAdDataRefreshRequest;
            ByteString byteString = this.$adDataRefreshToken;
            ByteString byteString2 = this.$opportunityId;
            this.label = 1;
            obj = getAdDataRefreshRequest.invoke(byteString, byteString2, this);
            if (obj == f10) {
                return f10;
            }
        }
        getRequestPolicy = this.this$0.getRequestPolicy;
        RequestPolicy invoke = getRequestPolicy.invoke();
        gatewayClient = this.this$0.gatewayClient;
        OperationType operationType = OperationType.REFRESH;
        this.label = 2;
        obj = GatewayClient.DefaultImpls.request$default(gatewayClient, null, (UniversalRequestOuterClass.UniversalRequest) obj, invoke, operationType, this, 1, null);
        if (obj == f10) {
            return f10;
        }
        return ((UniversalResponseOuterClass.UniversalResponse) obj).getPayload().getAdDataRefreshResponse();
    }
}
