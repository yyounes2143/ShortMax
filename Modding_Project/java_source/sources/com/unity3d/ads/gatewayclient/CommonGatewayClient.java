package com.unity3d.ads.gatewayclient;

import com.google.protobuf.InvalidProtocolBufferException;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.HandleGatewayUniversalResponse;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import gatewayprotocol.v1.ErrorKt;
import gatewayprotocol.v1.ErrorOuterClass;
import gatewayprotocol.v1.UniversalRequestOuterClass;
import gatewayprotocol.v1.UniversalResponseKt;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.random.Random;
import kotlin.text.Charsets;
import kotlin.time.TimeMark;
import ms.k;
import org.jetbrains.annotations.NotNull;
/* compiled from: CommonGatewayClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCommonGatewayClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonGatewayClient.kt\ncom/unity3d/ads/gatewayclient/CommonGatewayClient\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 UniversalResponseKt.kt\ngatewayprotocol/v1/UniversalResponseKtKt\n+ 4 ErrorKt.kt\ngatewayprotocol/v1/ErrorKtKt\n*L\n1#1,265:1\n1#2:266\n1#2:268\n1#2:270\n10#3:267\n10#4:269\n*S KotlinDebug\n*F\n+ 1 CommonGatewayClient.kt\ncom/unity3d/ads/gatewayclient/CommonGatewayClient\n*L\n227#1:268\n228#1:270\n227#1:267\n228#1:269\n*E\n"})
/* loaded from: classes7.dex */
public final class CommonGatewayClient implements GatewayClient {
    public static final int CODE_400 = 400;
    public static final int CODE_599 = 599;
    public static final int CODE_TOO_MANY_REQUESTS = 429;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String HEADER_CONTENT_TYPE = "Content-Type";
    @NotNull
    public static final String HEADER_PROTOBUF = "application/x-protobuf";
    @NotNull
    public static final String HEADER_RETRY_AFTER = "Retry-After";
    @NotNull
    public static final String HEADER_RETRY_ATTEMPT = "X-RETRY-ATTEMPT";
    @NotNull
    private final HandleGatewayUniversalResponse handleGatewayUniversalResponse;
    @NotNull
    private final HttpClient httpClient;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    /* compiled from: CommonGatewayClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CommonGatewayClient(@NotNull HttpClient httpClient, @NotNull HandleGatewayUniversalResponse handleGatewayUniversalResponse, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(httpClient, "httpClient");
        Intrinsics.checkNotNullParameter(handleGatewayUniversalResponse, "handleGatewayUniversalResponse");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        this.httpClient = httpClient;
        this.handleGatewayUniversalResponse = handleGatewayUniversalResponse;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.sessionRepository = sessionRepository;
    }

    private final HttpRequest buildHttpRequest(String str, Map<String, ? extends List<String>> map, RequestPolicy requestPolicy, UniversalRequestOuterClass.UniversalRequest universalRequest) {
        return new HttpRequest(str, null, RequestType.POST, universalRequest.toByteArray(), map, null, null, null, null, requestPolicy.getConnectTimeout(), requestPolicy.getReadTimeout(), requestPolicy.getWriteTimeout(), requestPolicy.getOverallTimeout(), true, null, null, 0, 115170, null);
    }

    private final long calculateDelayTime(long j10, RequestPolicy requestPolicy, int i10) {
        return Math.min(calculateExponentialBackoff(j10, requestPolicy, i10) + calculateJitter(requestPolicy.getRetryWaitBase(), requestPolicy.getRetryJitterPct()), requestPolicy.getRetryMaxInterval());
    }

    private final long calculateExponentialBackoff(long j10, RequestPolicy requestPolicy, int i10) {
        if (i10 == 0) {
            return j10;
        }
        return ((float) j10) * requestPolicy.getRetryScalingFactor();
    }

    private final long calculateJitter(int i10, float f10) {
        if (f10 == 0.0f) {
            return 0L;
        }
        long j10 = i10 * f10;
        return Random.f61065a.k(-j10, j10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object executeRequest(com.unity3d.services.core.network.model.HttpRequest r22, int r23, com.unity3d.ads.core.data.model.OperationType r24, rs.c<? super com.unity3d.services.core.network.model.HttpResponse> r25) {
        /*
            Method dump skipped, instructions count: 205
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.gatewayclient.CommonGatewayClient.executeRequest(com.unity3d.services.core.network.model.HttpRequest, int, com.unity3d.ads.core.data.model.OperationType, rs.c):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00d5 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0109  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x0183 -> B:50:0x018a). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object executeWithRetry(java.lang.String r30, gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest r31, com.unity3d.ads.gatewayclient.RequestPolicy r32, com.unity3d.ads.core.data.model.OperationType r33, rs.c<? super gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse> r34) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.gatewayclient.CommonGatewayClient.executeWithRetry(java.lang.String, gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest, com.unity3d.ads.gatewayclient.RequestPolicy, com.unity3d.ads.core.data.model.OperationType, rs.c):java.lang.Object");
    }

    private final String getGatewayUrl(String str) {
        if (Intrinsics.areEqual(str, UnityAdsConstants.DefaultUrls.GATEWAY_URL)) {
            return this.sessionRepository.getGatewayUrl();
        }
        return str;
    }

    private final Map<String, List<String>> getHeaders(int i10) {
        Map c10 = p0.c();
        c10.put(HEADER_CONTENT_TYPE, CollectionsKt.e(HEADER_PROTOBUF));
        if (i10 > 0) {
            c10.put(HEADER_RETRY_ATTEMPT, CollectionsKt.e(String.valueOf(i10)));
        }
        return p0.b(c10);
    }

    private final UniversalResponseOuterClass.UniversalResponse getUniversalResponse(HttpResponse httpResponse, OperationType operationType) {
        try {
            Object body = httpResponse.getBody();
            if (body instanceof byte[]) {
                UniversalResponseOuterClass.UniversalResponse parseFrom = UniversalResponseOuterClass.UniversalResponse.parseFrom((byte[]) body);
                Intrinsics.checkNotNullExpressionValue(parseFrom, "parseFrom(responseBody)");
                return parseFrom;
            } else if (body instanceof String) {
                byte[] bytes = ((String) body).getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "this as java.lang.String).getBytes(charset)");
                UniversalResponseOuterClass.UniversalResponse parseFrom2 = UniversalResponseOuterClass.UniversalResponse.parseFrom(bytes);
                Intrinsics.checkNotNullExpressionValue(parseFrom2, "parseFrom(\n             ….UTF_8)\n                )");
                return parseFrom2;
            } else {
                throw new InvalidProtocolBufferException("Could not parse response from gateway service");
            }
        } catch (InvalidProtocolBufferException e10) {
            DeviceLog.debug("Failed to parse response from gateway service with exception: %s", e10.getLocalizedMessage());
            SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_parse_failure", null, p0.m(k.a("operation", operationType.toString()), k.a("reason", "protobuf_parsing"), k.a("reason_debug", httpResponse.getBody().toString())), null, null, null, 58, null);
            UniversalResponseKt.Dsl.Companion companion = UniversalResponseKt.Dsl.Companion;
            UniversalResponseOuterClass.UniversalResponse.Builder newBuilder = UniversalResponseOuterClass.UniversalResponse.newBuilder();
            Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
            UniversalResponseKt.Dsl _create = companion._create(newBuilder);
            ErrorKt.Dsl.Companion companion2 = ErrorKt.Dsl.Companion;
            ErrorOuterClass.Error.Builder newBuilder2 = ErrorOuterClass.Error.newBuilder();
            Intrinsics.checkNotNullExpressionValue(newBuilder2, "newBuilder()");
            ErrorKt.Dsl _create2 = companion2._create(newBuilder2);
            _create2.setErrorText("ERROR: Could not parse response from gateway service");
            _create.setError(_create2._build());
            return _create._build();
        }
    }

    private final void sendNetworkErrorDiagnosticEvent(UnityAdsNetworkException unityAdsNetworkException, int i10, OperationType operationType, TimeMark timeMark) {
        if (operationType == OperationType.UNIVERSAL_EVENT) {
            return;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_failure_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), p0.o(k.a("operation", operationType.toString()), k.a("retries", String.valueOf(i10)), k.a("protocol", String.valueOf(unityAdsNetworkException.getProtocol())), k.a("network_client", String.valueOf(unityAdsNetworkException.getClient())), k.a("reason_code", String.valueOf(unityAdsNetworkException.getCode())), k.a("reason_debug", unityAdsNetworkException.getMessage())), null, null, null, 56, null);
    }

    private final void sendNetworkSuccessDiagnosticEvent(HttpResponse httpResponse, int i10, OperationType operationType, TimeMark timeMark) {
        if (operationType == OperationType.UNIVERSAL_EVENT) {
            return;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_network_success_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), p0.o(k.a("operation", operationType.toString()), k.a("retries", String.valueOf(i10)), k.a("protocol", httpResponse.getProtocol()), k.a("network_client", httpResponse.getClient()), k.a("reason_code", String.valueOf(httpResponse.getStatusCode()))), null, null, null, 56, null);
    }

    private final boolean shouldRetry(int i10, long j10, int i11) {
        if (400 <= i10 && i10 < 600 && j10 < i11) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    @Override // com.unity3d.ads.gatewayclient.GatewayClient
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object request(@org.jetbrains.annotations.NotNull java.lang.String r21, @org.jetbrains.annotations.NotNull gatewayprotocol.v1.UniversalRequestOuterClass.UniversalRequest r22, @org.jetbrains.annotations.NotNull com.unity3d.ads.gatewayclient.RequestPolicy r23, @org.jetbrains.annotations.NotNull com.unity3d.ads.core.data.model.OperationType r24, @org.jetbrains.annotations.NotNull rs.c<? super gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse> r25) {
        /*
            r20 = this;
            r0 = r25
            boolean r1 = r0 instanceof com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1
            if (r1 == 0) goto L17
            r1 = r0
            com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1 r1 = (com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1) r1
            int r2 = r1.label
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L17
            int r2 = r2 - r3
            r1.label = r2
            r9 = r20
            goto L1e
        L17:
            com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1 r1 = new com.unity3d.ads.gatewayclient.CommonGatewayClient$request$1
            r9 = r20
            r1.<init>(r9, r0)
        L1e:
            java.lang.Object r0 = r1.result
            java.lang.Object r10 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r1.label
            r11 = 1
            if (r2 == 0) goto L3b
            if (r2 != r11) goto L33
            java.lang.Object r1 = r1.L$0
            com.unity3d.ads.gatewayclient.RequestPolicy r1 = (com.unity3d.ads.gatewayclient.RequestPolicy) r1
            kotlin.f.b(r0)
            goto L69
        L33:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "call to 'resume' before 'invoke' with coroutine"
            r0.<init>(r1)
            throw r0
        L3b:
            kotlin.f.b(r0)
            kotlin.time.b$a r0 = kotlin.time.b.f61250b
            int r0 = r23.getMaxDuration()
            kotlin.time.DurationUnit r2 = kotlin.time.DurationUnit.MILLISECONDS
            long r12 = kotlin.time.c.s(r0, r2)
            com.unity3d.ads.gatewayclient.CommonGatewayClient$request$2 r0 = new com.unity3d.ads.gatewayclient.CommonGatewayClient$request$2
            r8 = 0
            r2 = r0
            r3 = r20
            r4 = r21
            r5 = r22
            r6 = r23
            r7 = r24
            r2.<init>(r3, r4, r5, r6, r7, r8)
            r2 = r23
            r1.L$0 = r2
            r1.label = r11
            java.lang.Object r0 = kotlinx.coroutines.TimeoutKt.f(r12, r0, r1)
            if (r0 != r10) goto L68
            return r10
        L68:
            r1 = r2
        L69:
            gatewayprotocol.v1.UniversalResponseOuterClass$UniversalResponse r0 = (gatewayprotocol.v1.UniversalResponseOuterClass.UniversalResponse) r0
            if (r0 == 0) goto L6e
            return r0
        L6e:
            com.unity3d.ads.core.data.model.exception.NetworkTimeoutException r0 = new com.unity3d.ads.core.data.model.exception.NetworkTimeoutException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Gateway request timed out after "
            r2.append(r3)
            int r1 = r1.getMaxDuration()
            r2.append(r1)
            java.lang.String r1 = "ms"
            r2.append(r1)
            java.lang.String r11 = r2.toString()
            r18 = 126(0x7e, float:1.77E-43)
            r19 = 0
            r12 = 0
            r13 = 0
            r14 = 0
            r15 = 0
            r16 = 0
            r17 = 0
            r10 = r0
            r10.<init>(r11, r12, r13, r14, r15, r16, r17, r18, r19)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.gatewayclient.CommonGatewayClient.request(java.lang.String, gatewayprotocol.v1.UniversalRequestOuterClass$UniversalRequest, com.unity3d.ads.gatewayclient.RequestPolicy, com.unity3d.ads.core.data.model.OperationType, rs.c):java.lang.Object");
    }
}
