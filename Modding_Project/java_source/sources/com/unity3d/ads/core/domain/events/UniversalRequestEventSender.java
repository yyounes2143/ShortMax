package com.unity3d.ads.core.domain.events;

import com.unity3d.ads.gatewayclient.GatewayClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: UniversalRequestEventSender.kt */
@Metadata
/* loaded from: classes7.dex */
public final class UniversalRequestEventSender {
    @NotNull
    private final GatewayClient gatewayClient;
    @NotNull
    private final HandleGatewayEventResponse handleGatewayEventResponse;
    @NotNull
    private final UniversalRequestTtlValidator universalRequestTtlValidator;

    public UniversalRequestEventSender(@NotNull GatewayClient gatewayClient, @NotNull HandleGatewayEventResponse handleGatewayEventResponse, @NotNull UniversalRequestTtlValidator universalRequestTtlValidator) {
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(handleGatewayEventResponse, "handleGatewayEventResponse");
        Intrinsics.checkNotNullParameter(universalRequestTtlValidator, "universalRequestTtlValidator");
        this.gatewayClient = gatewayClient;
        this.handleGatewayEventResponse = handleGatewayEventResponse;
        this.universalRequestTtlValidator = universalRequestTtlValidator;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0083  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest r12, @org.jetbrains.annotations.NotNull com.unity3d.ads.gatewayclient.RequestPolicy r13, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r14) {
        /*
            r11 = this;
            boolean r0 = r14 instanceof com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1
            if (r0 == 0) goto L13
            r0 = r14
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1 r0 = (com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1 r0 = new com.unity3d.ads.core.domain.events.UniversalRequestEventSender$invoke$1
            r0.<init>(r11, r14)
        L18:
            java.lang.Object r14 = r0.result
            java.lang.Object r9 = kotlin.coroutines.intrinsics.a.f()
            int r1 = r0.label
            r10 = 2
            r2 = 1
            if (r1 == 0) goto L3f
            if (r1 == r2) goto L35
            if (r1 != r10) goto L2d
            kotlin.f.b(r14)
            goto L96
        L2d:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r13)
            throw r12
        L35:
            java.lang.Object r12 = r0.L$0
            com.unity3d.ads.core.domain.events.UniversalRequestEventSender r12 = (com.unity3d.ads.core.domain.events.UniversalRequestEventSender) r12
            kotlin.f.b(r14)     // Catch: java.lang.Throwable -> L3d
            goto L65
        L3d:
            r13 = move-exception
            goto L6e
        L3f:
            kotlin.f.b(r14)
            com.unity3d.ads.core.domain.events.UniversalRequestTtlValidator r14 = r11.universalRequestTtlValidator
            boolean r14 = r14.invoke(r12, r13)
            if (r14 != 0) goto L4d
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        L4d:
            kotlin.Result$a r14 = kotlin.Result.f60901b     // Catch: java.lang.Throwable -> L6c
            com.unity3d.ads.gatewayclient.GatewayClient r1 = r11.gatewayClient     // Catch: java.lang.Throwable -> L6c
            com.unity3d.ads.core.data.model.OperationType r5 = com.unity3d.ads.core.data.model.OperationType.UNIVERSAL_EVENT     // Catch: java.lang.Throwable -> L6c
            r0.L$0 = r11     // Catch: java.lang.Throwable -> L6c
            r0.label = r2     // Catch: java.lang.Throwable -> L6c
            r2 = 0
            r7 = 1
            r8 = 0
            r3 = r12
            r4 = r13
            r6 = r0
            java.lang.Object r14 = com.unity3d.ads.gatewayclient.GatewayClient.DefaultImpls.request$default(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L6c
            if (r14 != r9) goto L64
            return r9
        L64:
            r12 = r11
        L65:
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r14 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r14     // Catch: java.lang.Throwable -> L3d
            java.lang.Object r13 = kotlin.Result.d(r14)     // Catch: java.lang.Throwable -> L3d
            goto L78
        L6c:
            r13 = move-exception
            r12 = r11
        L6e:
            kotlin.Result$a r14 = kotlin.Result.f60901b
            java.lang.Object r13 = kotlin.f.a(r13)
            java.lang.Object r13 = kotlin.Result.d(r13)
        L78:
            java.lang.Throwable r14 = kotlin.Result.g(r13)
            boolean r14 = r14 instanceof com.unity3d.ads.core.data.model.exception.GatewayException
            if (r14 == 0) goto L83
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        L83:
            com.unity3d.ads.core.domain.events.HandleGatewayEventResponse r12 = r12.handleGatewayEventResponse
            kotlin.f.b(r13)
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r13 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r13
            r14 = 0
            r0.L$0 = r14
            r0.label = r10
            java.lang.Object r12 = r12.invoke(r13, r0)
            if (r12 != r9) goto L96
            return r9
        L96:
            kotlin.Unit r12 = kotlin.Unit.f60915a
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.events.UniversalRequestEventSender.invoke(gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest, com.unity3d.ads.gatewayclient.RequestPolicy, rs.c):java.lang.Object");
    }
}
