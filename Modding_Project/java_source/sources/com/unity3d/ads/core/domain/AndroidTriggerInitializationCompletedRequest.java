package com.unity3d.ads.core.domain;

import com.unity3d.ads.gatewayclient.GatewayClient;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidTriggerInitializationCompletedRequest.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidTriggerInitializationCompletedRequest implements TriggerInitializationCompletedRequest {
    @NotNull
    private final GatewayClient gatewayClient;
    @NotNull
    private final GetInitializationCompletedRequest getInitializationCompletedRequest;
    @NotNull
    private final GetRequestPolicy getRequestPolicy;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidTriggerInitializationCompletedRequest(@NotNull GetInitializationCompletedRequest getInitializationCompletedRequest, @NotNull GetRequestPolicy getRequestPolicy, @NotNull GatewayClient gatewayClient, @NotNull SendDiagnosticEvent sendDiagnosticEvent) {
        Intrinsics.checkNotNullParameter(getInitializationCompletedRequest, "getInitializationCompletedRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        this.getInitializationCompletedRequest = getInitializationCompletedRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.gatewayClient = gatewayClient;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(4:(2:3|(11:5|6|7|(1:(1:(5:11|12|13|14|(2:16|17)(2:20|21))(2:25|26))(4:27|28|29|30))(4:50|51|52|(1:54)(1:55))|31|32|33|34|35|36|(1:38)(3:39|14|(0)(0))))|35|36|(0)(0))|59|6|7|(0)(0)|31|32|33|34|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x011f, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0120, code lost:
        r17 = r9;
     */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ac A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b8 A[Catch: Exception -> 0x003f, TRY_LEAVE, TryCatch #1 {Exception -> 0x003f, blocks: (B:14:0x003a, B:38:0x00b0, B:40:0x00b8), top: B:54:0x003a }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00fc  */
    @Override // com.unity3d.ads.core.domain.TriggerInitializationCompletedRequest
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r25) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidTriggerInitializationCompletedRequest.invoke(rs.c):java.lang.Object");
    }
}
