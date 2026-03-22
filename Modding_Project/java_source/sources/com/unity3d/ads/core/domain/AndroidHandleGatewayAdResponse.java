package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.AdPlayerScope;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
/* compiled from: AndroidHandleGatewayAdResponse.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidHandleGatewayAdResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 measureTime.kt\nkotlin/time/MeasureTimeKt\n+ 4 OperativeEventErrorDataKt.kt\ngatewayprotocol/v1/OperativeEventErrorDataKtKt\n*L\n1#1,245:1\n1#2:246\n1#2:260\n79#3,5:247\n113#3,7:252\n10#4:259\n*S KotlinDebug\n*F\n+ 1 AndroidHandleGatewayAdResponse.kt\ncom/unity3d/ads/core/domain/AndroidHandleGatewayAdResponse\n*L\n231#1:260\n144#1:247,5\n144#1:252,7\n231#1:259\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHandleGatewayAdResponse implements HandleGatewayAdResponse {
    @NotNull
    private final AdPlayerScope adPlayerScope;
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final CacheWebViewAssets cacheWebViewAssets;
    @NotNull
    private final CampaignRepository campaignRepository;
    @NotNull
    private final DeviceInfoRepository deviceInfoRepository;
    @NotNull
    private final GetAdPlayer getAdPlayer;
    @NotNull
    private final HandleInvocationsFromAdViewer getHandleInvocationsFromAdViewer;
    @NotNull
    private final GetLatestWebViewConfiguration getLatestWebViewConfiguration;
    @NotNull
    private final GetOperativeEventApi getOperativeEventApi;
    @NotNull
    private final GetWebViewBridgeUseCase getWebViewBridge;
    @NotNull
    private final AndroidGetWebViewContainerUseCase getWebViewContainerUseCase;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;

    public AndroidHandleGatewayAdResponse(@NotNull AdRepository adRepository, @NotNull AndroidGetWebViewContainerUseCase getWebViewContainerUseCase, @NotNull GetWebViewBridgeUseCase getWebViewBridge, @NotNull DeviceInfoRepository deviceInfoRepository, @NotNull HandleInvocationsFromAdViewer getHandleInvocationsFromAdViewer, @NotNull CampaignRepository campaignRepository, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull GetOperativeEventApi getOperativeEventApi, @NotNull GetLatestWebViewConfiguration getLatestWebViewConfiguration, @NotNull AdPlayerScope adPlayerScope, @NotNull GetAdPlayer getAdPlayer, @NotNull CacheWebViewAssets cacheWebViewAssets) {
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(getWebViewContainerUseCase, "getWebViewContainerUseCase");
        Intrinsics.checkNotNullParameter(getWebViewBridge, "getWebViewBridge");
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        Intrinsics.checkNotNullParameter(getHandleInvocationsFromAdViewer, "getHandleInvocationsFromAdViewer");
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getLatestWebViewConfiguration, "getLatestWebViewConfiguration");
        Intrinsics.checkNotNullParameter(adPlayerScope, "adPlayerScope");
        Intrinsics.checkNotNullParameter(getAdPlayer, "getAdPlayer");
        Intrinsics.checkNotNullParameter(cacheWebViewAssets, "cacheWebViewAssets");
        this.adRepository = adRepository;
        this.getWebViewContainerUseCase = getWebViewContainerUseCase;
        this.getWebViewBridge = getWebViewBridge;
        this.deviceInfoRepository = deviceInfoRepository;
        this.getHandleInvocationsFromAdViewer = getHandleInvocationsFromAdViewer;
        this.campaignRepository = campaignRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getLatestWebViewConfiguration = getLatestWebViewConfiguration;
        this.adPlayerScope = adPlayerScope;
        this.getAdPlayer = getAdPlayer;
        this.cacheWebViewAssets = cacheWebViewAssets;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00b0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object cleanup(java.lang.Throwable r16, com.google.protobuf.ByteString r17, gatewayprotocol.v1.AdResponseOuterClass.AdResponse r18, com.unity3d.ads.adplayer.AdPlayer r19, rs.c<? super kotlin.Unit> r20) {
        /*
            r15 = this;
            r0 = r15
            r1 = r20
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1
            if (r2 == 0) goto L16
            r2 = r1
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1 r2 = (com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L16
            int r3 = r3 - r4
            r2.label = r3
            goto L1b
        L16:
            com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1 r2 = new com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse$cleanup$1
            r2.<init>(r15, r1)
        L1b:
            java.lang.Object r1 = r2.result
            java.lang.Object r13 = kotlin.coroutines.intrinsics.a.f()
            int r3 = r2.label
            r14 = 2
            r4 = 1
            if (r3 == 0) goto L41
            if (r3 == r4) goto L38
            if (r3 != r14) goto L30
            kotlin.f.b(r1)
            goto Lad
        L30:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L38:
            java.lang.Object r3 = r2.L$0
            com.unity3d.ads.adplayer.AdPlayer r3 = (com.unity3d.ads.adplayer.AdPlayer) r3
            kotlin.f.b(r1)
            r1 = r3
            goto L9f
        L41:
            kotlin.f.b(r1)
            gatewayprotocol.v1.OperativeEventErrorDataKt$Dsl$Companion r1 = gatewayprotocol.v1.OperativeEventErrorDataKt.Dsl.Companion
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorData$Builder r3 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder()
            java.lang.String r5 = "newBuilder()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r3, r5)
            gatewayprotocol.v1.OperativeEventErrorDataKt$Dsl r1 = r1._create(r3)
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorType r3 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventErrorType.OPERATIVE_EVENT_ERROR_TYPE_UNSPECIFIED
            r1.setErrorType(r3)
            java.lang.Throwable r3 = r16.getCause()
            if (r3 == 0) goto L64
            java.lang.String r3 = r3.getMessage()
            if (r3 != 0) goto L6c
        L64:
            java.lang.String r3 = r16.getMessage()
            if (r3 != 0) goto L6c
            java.lang.String r3 = ""
        L6c:
            r1.setMessage(r3)
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventErrorData r1 = r1._build()
            com.unity3d.ads.core.domain.events.GetOperativeEventApi r3 = r0.getOperativeEventApi
            gatewayprotocol.v1.OperativeEventRequestOuterClass$OperativeEventType r5 = gatewayprotocol.v1.OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_LOAD_ERROR
            com.google.protobuf.ByteString r6 = r18.getTrackingToken()
            java.lang.String r7 = "response.trackingToken"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r6, r7)
            com.google.protobuf.ByteString r7 = r1.toByteString()
            java.lang.String r1 = "operativeEventErrorData.toByteString()"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r7, r1)
            r1 = r19
            r2.L$0 = r1
            r2.label = r4
            r8 = 0
            r9 = 0
            r11 = 48
            r12 = 0
            r4 = r5
            r5 = r17
            r10 = r2
            java.lang.Object r3 = com.unity3d.ads.core.domain.events.GetOperativeEventApi.invoke$default(r3, r4, r5, r6, r7, r8, r9, r10, r11, r12)
            if (r3 != r13) goto L9f
            return r13
        L9f:
            if (r1 == 0) goto Lb0
            r3 = 0
            r2.L$0 = r3
            r2.label = r14
            java.lang.Object r1 = r1.destroy(r2)
            if (r1 != r13) goto Lad
            return r13
        Lad:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        Lb0:
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.cleanup(java.lang.Throwable, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, com.unity3d.ads.adplayer.AdPlayer, rs.c):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:100:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0465 A[Catch: CancellationException -> 0x04d9, TRY_LEAVE, TryCatch #2 {CancellationException -> 0x04d9, blocks: (B:101:0x045f, B:103:0x0465, B:113:0x04de, B:115:0x050d, B:122:0x0526, B:117:0x0513, B:119:0x0519, B:121:0x0521), top: B:150:0x045f }] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x04de A[Catch: CancellationException -> 0x04d9, TRY_ENTER, TryCatch #2 {CancellationException -> 0x04d9, blocks: (B:101:0x045f, B:103:0x0465, B:113:0x04de, B:115:0x050d, B:122:0x0526, B:117:0x0513, B:119:0x0519, B:121:0x0521), top: B:150:0x045f }] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x058e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:140:0x058f  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0597  */
    /* JADX WARN: Removed duplicated region for block: B:173:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0217 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0218  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0223 A[Catch: CancellationException -> 0x00ee, TryCatch #11 {CancellationException -> 0x00ee, blocks: (B:85:0x02f1, B:31:0x00e8, B:62:0x0219, B:64:0x0223, B:66:0x023b, B:71:0x0253, B:73:0x025c, B:76:0x027a, B:37:0x0112, B:58:0x01c8), top: B:167:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x023b A[Catch: CancellationException -> 0x00ee, TryCatch #11 {CancellationException -> 0x00ee, blocks: (B:85:0x02f1, B:31:0x00e8, B:62:0x0219, B:64:0x0223, B:66:0x023b, B:71:0x0253, B:73:0x025c, B:76:0x027a, B:37:0x0112, B:58:0x01c8), top: B:167:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x032a  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x0455 A[RETURN] */
    /* JADX WARN: Type inference failed for: r4v22, types: [T, com.unity3d.ads.adplayer.AdPlayer] */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v35 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    @Override // com.unity3d.ads.core.domain.HandleGatewayAdResponse
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(@org.jetbrains.annotations.NotNull com.unity3d.ads.UnityAdsLoadOptions r53, @org.jetbrains.annotations.NotNull com.google.protobuf.ByteString r54, @org.jetbrains.annotations.NotNull gatewayprotocol.v1.AdResponseOuterClass.AdResponse r55, @org.jetbrains.annotations.NotNull android.content.Context r56, @org.jetbrains.annotations.NotNull java.lang.String r57, @org.jetbrains.annotations.NotNull gatewayprotocol.v1.DiagnosticEventRequestOuterClass.DiagnosticAdType r58, boolean r59, @org.jetbrains.annotations.NotNull rs.c<? super com.unity3d.ads.core.data.model.LoadResult> r60) {
        /*
            Method dump skipped, instructions count: 1452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHandleGatewayAdResponse.invoke(com.unity3d.ads.UnityAdsLoadOptions, com.google.protobuf.ByteString, gatewayprotocol.v1.AdResponseOuterClass$AdResponse, android.content.Context, java.lang.String, gatewayprotocol.v1.DiagnosticEventRequestOuterClass$DiagnosticAdType, boolean, rs.c):java.lang.Object");
    }
}
