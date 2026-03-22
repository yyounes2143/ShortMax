package com.unity3d.ads.core.domain;

import com.unity3d.ads.UnityAds;
import com.unity3d.ads.core.data.manager.SDKPropertiesManager;
import com.unity3d.ads.core.data.manager.StorageManager;
import com.unity3d.ads.core.data.model.InitializationState;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.model.exception.InitializationException;
import com.unity3d.ads.core.data.repository.DiagnosticEventRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.events.EventObservers;
import com.unity3d.ads.core.domain.om.InitializeOMSDK;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.ads.gatewayclient.GatewayClient;
import com.unity3d.services.core.configuration.ConfigurationReader;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.InitializationResponseOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.UniversalResponseOuterClass;
import gt.c0;
import gt.e;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.time.TimeMark;
import ms.g;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: AndroidInitializeBoldSDK.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AndroidInitializeBoldSDK implements InitializeBoldSDK {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MSG_GATEWAY_DENIED = "Gateway communication failure";
    @NotNull
    public static final String MSG_NETWORK = "Network";
    @NotNull
    public static final String MSG_TIMEOUT = "Timeout";
    @NotNull
    public static final String MSG_UNKNOWN = "Initialization failure";
    @NotNull
    private final CleanAssets cleanAssets;
    @NotNull
    private final c0 defaultDispatcher;
    @NotNull
    private final DiagnosticEventRepository diagnosticEventRepository;
    @NotNull
    private final EventObservers eventObservers;
    @NotNull
    private final GatewayClient gatewayClient;
    @NotNull
    private final GetGameId getGameId;
    @NotNull
    private final GetInitializationRequest getInitializeRequest;
    @NotNull
    private final GetRequestPolicy getRequestPolicy;
    @NotNull
    private final AndroidHandleFocusCounters handleFocusCounters;
    @NotNull
    private final HandleGatewayInitializationResponse handleGatewayInitializationResponse;
    @NotNull
    private final InitializeOMSDK initializeOM;
    @NotNull
    private final ConfigurationReader legacyConfigurationReader;
    @NotNull
    private final SDKPropertiesManager sdkPropertiesManager;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final StorageManager storageManager;
    @NotNull
    private final TriggerInitializeListener triggerInitializeListener;

    /* compiled from: AndroidInitializeBoldSDK.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public AndroidInitializeBoldSDK(@NotNull c0 defaultDispatcher, @NotNull InitializeOMSDK initializeOM, @NotNull GetInitializationRequest getInitializeRequest, @NotNull GetRequestPolicy getRequestPolicy, @NotNull CleanAssets cleanAssets, @NotNull HandleGatewayInitializationResponse handleGatewayInitializationResponse, @NotNull GatewayClient gatewayClient, @NotNull SessionRepository sessionRepository, @NotNull EventObservers eventObservers, @NotNull TriggerInitializeListener triggerInitializeListener, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull DiagnosticEventRepository diagnosticEventRepository, @NotNull StorageManager storageManager, @NotNull ConfigurationReader legacyConfigurationReader, @NotNull SDKPropertiesManager sdkPropertiesManager, @NotNull GetGameId getGameId, @NotNull AndroidHandleFocusCounters handleFocusCounters) {
        Intrinsics.checkNotNullParameter(defaultDispatcher, "defaultDispatcher");
        Intrinsics.checkNotNullParameter(initializeOM, "initializeOM");
        Intrinsics.checkNotNullParameter(getInitializeRequest, "getInitializeRequest");
        Intrinsics.checkNotNullParameter(getRequestPolicy, "getRequestPolicy");
        Intrinsics.checkNotNullParameter(cleanAssets, "cleanAssets");
        Intrinsics.checkNotNullParameter(handleGatewayInitializationResponse, "handleGatewayInitializationResponse");
        Intrinsics.checkNotNullParameter(gatewayClient, "gatewayClient");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(eventObservers, "eventObservers");
        Intrinsics.checkNotNullParameter(triggerInitializeListener, "triggerInitializeListener");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(diagnosticEventRepository, "diagnosticEventRepository");
        Intrinsics.checkNotNullParameter(storageManager, "storageManager");
        Intrinsics.checkNotNullParameter(legacyConfigurationReader, "legacyConfigurationReader");
        Intrinsics.checkNotNullParameter(sdkPropertiesManager, "sdkPropertiesManager");
        Intrinsics.checkNotNullParameter(getGameId, "getGameId");
        Intrinsics.checkNotNullParameter(handleFocusCounters, "handleFocusCounters");
        this.defaultDispatcher = defaultDispatcher;
        this.initializeOM = initializeOM;
        this.getInitializeRequest = getInitializeRequest;
        this.getRequestPolicy = getRequestPolicy;
        this.cleanAssets = cleanAssets;
        this.handleGatewayInitializationResponse = handleGatewayInitializationResponse;
        this.gatewayClient = gatewayClient;
        this.sessionRepository = sessionRepository;
        this.eventObservers = eventObservers;
        this.triggerInitializeListener = triggerInitializeListener;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.diagnosticEventRepository = diagnosticEventRepository;
        this.storageManager = storageManager;
        this.legacyConfigurationReader = legacyConfigurationReader;
        this.sdkPropertiesManager = sdkPropertiesManager;
        this.getGameId = getGameId;
        this.handleFocusCounters = handleFocusCounters;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkCanInitialize() {
        Integer num;
        if (this.sessionRepository.getShouldInitialize()) {
            String invoke = this.getGameId.invoke();
            if (invoke != null) {
                num = StringsKt.toIntOrNull(invoke);
            } else {
                num = null;
            }
            if (num != null) {
                return;
            }
            throw new InitializationException("gameId \"" + invoke + "\" should be a number.", null, "invalid_game_id", invoke, 2, null);
        }
        throw new InitializationException(MSG_GATEWAY_DENIED, null, "gateway", "!sessionRepository.shouldInitialize", 2, null);
    }

    private final Map<String, String> getTags(InitializationException initializationException, String str, boolean z10) {
        Map c10 = p0.c();
        c10.put("operation", OperationType.INITIALIZATION.toString());
        c10.put("reason", initializationException.getReason());
        c10.put("source", str);
        c10.put("is_retry", String.valueOf(z10));
        if (initializationException.getReasonDebug() != null) {
            c10.put("reason_debug", initializationException.getReasonDebug());
        }
        return p0.b(c10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object handleResponse(UniversalResponseOuterClass.UniversalResponse universalResponse, c<? super Unit> cVar) {
        if (!universalResponse.hasError()) {
            if (universalResponse.hasPayload()) {
                if (universalResponse.getPayload().hasInitializationResponse()) {
                    HandleGatewayInitializationResponse handleGatewayInitializationResponse = this.handleGatewayInitializationResponse;
                    InitializationResponseOuterClass.InitializationResponse initializationResponse = universalResponse.getPayload().getInitializationResponse();
                    Intrinsics.checkNotNullExpressionValue(initializationResponse, "response.payload.initializationResponse");
                    Object invoke = handleGatewayInitializationResponse.invoke(initializationResponse, cVar);
                    if (invoke == kotlin.coroutines.intrinsics.a.f()) {
                        return invoke;
                    }
                    return Unit.f60915a;
                }
                throw new InitializationException(MSG_GATEWAY_DENIED, null, "gateway", "No initialization response", 2, null);
            }
            throw new InitializationException(MSG_GATEWAY_DENIED, null, "gateway", "No payload", 2, null);
        }
        this.sessionRepository.setShouldInitialize(false);
        throw new InitializationException(MSG_GATEWAY_DENIED, null, "gateway", universalResponse.getError().getErrorText(), 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initializationFailure(TimeMark timeMark, InitializationException initializationException, String str, boolean z10) {
        DeviceLog.debug("Unity Ads Initialization Failure: " + initializationException.getMessage());
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_initialize_task_failure_time", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), getTags(initializationException, str, z10), null, null, null, 56, null);
        this.sessionRepository.setInitializationState(InitializationState.FAILED);
        this.sdkPropertiesManager.setInitialized(false);
        this.triggerInitializeListener.error(UnityAds.UnityAdsInitializationError.INTERNAL_ERROR, initializationException.getMessage());
        setupDiagnosticEvents();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object initializationStart(String str, boolean z10, c<? super Unit> cVar) {
        DeviceLog.debug("Unity Ads Initialization Start");
        this.sdkPropertiesManager.setInitializationTime();
        this.sdkPropertiesManager.setInitializationTimeSinceEpoch();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_initialization_started", null, p0.m(k.a("source", str), k.a("is_retry", String.valueOf(z10)), k.a("kotlin_version", g.f62627f.toString())), null, null, null, 58, null);
        this.sessionRepository.setInitializationState(InitializationState.INITIALIZING);
        Object invoke = this.eventObservers.invoke(cVar);
        if (invoke == kotlin.coroutines.intrinsics.a.f()) {
            return invoke;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0050  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b9 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00ba  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object initializationSuccess(kotlin.time.TimeMark r18, java.lang.String r19, boolean r20, rs.c<? super kotlin.Unit> r21) {
        /*
            r17 = this;
            r0 = r17
            r1 = r21
            boolean r2 = r1 instanceof com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1
            if (r2 == 0) goto L17
            r2 = r1
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1 r2 = (com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1) r2
            int r3 = r2.label
            r4 = -2147483648(0xffffffff80000000, float:-0.0)
            r5 = r3 & r4
            if (r5 == 0) goto L17
            int r3 = r3 - r4
            r2.label = r3
            goto L1c
        L17:
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1 r2 = new com.unity3d.ads.core.domain.AndroidInitializeBoldSDK$initializationSuccess$1
            r2.<init>(r0, r1)
        L1c:
            java.lang.Object r1 = r2.result
            java.lang.Object r3 = kotlin.coroutines.intrinsics.a.f()
            int r4 = r2.label
            r5 = 3
            r6 = 2
            r7 = 1
            if (r4 == 0) goto L50
            if (r4 == r7) goto L48
            if (r4 == r6) goto L40
            if (r4 != r5) goto L38
            java.lang.Object r2 = r2.L$0
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r2 = (com.unity3d.ads.core.domain.AndroidInitializeBoldSDK) r2
            kotlin.f.b(r1)
            goto Lbb
        L38:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r1
        L40:
            java.lang.Object r4 = r2.L$0
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r4 = (com.unity3d.ads.core.domain.AndroidInitializeBoldSDK) r4
            kotlin.f.b(r1)
            goto La8
        L48:
            java.lang.Object r4 = r2.L$0
            com.unity3d.ads.core.domain.AndroidInitializeBoldSDK r4 = (com.unity3d.ads.core.domain.AndroidInitializeBoldSDK) r4
            kotlin.f.b(r1)
            goto L9b
        L50:
            kotlin.f.b(r1)
            java.lang.String r1 = "Unity Ads Initialization Success"
            com.unity3d.services.core.log.DeviceLog.debug(r1)
            com.unity3d.ads.core.domain.SendDiagnosticEvent r8 = r0.sendDiagnosticEvent
            double r9 = com.unity3d.ads.core.extensions.TimeExtensionsKt.elapsedMillis(r18)
            java.lang.Double r10 = kotlin.coroutines.jvm.internal.a.b(r9)
            java.lang.String r1 = "source"
            r4 = r19
            kotlin.Pair r1 = ms.k.a(r1, r4)
            java.lang.String r4 = java.lang.String.valueOf(r20)
            java.lang.String r9 = "is_retry"
            kotlin.Pair r4 = ms.k.a(r9, r4)
            kotlin.Pair[] r1 = new kotlin.Pair[]{r1, r4}
            java.util.Map r11 = kotlin.collections.p0.m(r1)
            r15 = 56
            r16 = 0
            java.lang.String r9 = "native_initialize_task_success_time"
            r12 = 0
            r13 = 0
            r14 = 0
            com.unity3d.ads.core.domain.SendDiagnosticEvent.DefaultImpls.invoke$default(r8, r9, r10, r11, r12, r13, r14, r15, r16)
            com.unity3d.ads.core.data.manager.StorageManager r1 = r0.storageManager
            r1.hasInitialized()
            com.unity3d.ads.core.domain.om.InitializeOMSDK r1 = r0.initializeOM
            r2.L$0 = r0
            r2.label = r7
            java.lang.Object r1 = r1.invoke(r2)
            if (r1 != r3) goto L9a
            return r3
        L9a:
            r4 = r0
        L9b:
            com.unity3d.ads.core.domain.CleanAssets r1 = r4.cleanAssets
            r2.L$0 = r4
            r2.label = r6
            java.lang.Object r1 = r1.invoke(r2)
            if (r1 != r3) goto La8
            return r3
        La8:
            com.unity3d.ads.core.domain.AndroidHandleFocusCounters r1 = r4.handleFocusCounters
            r1.invoke()
            com.unity3d.ads.core.data.repository.SessionRepository r1 = r4.sessionRepository
            r2.L$0 = r4
            r2.label = r5
            java.lang.Object r1 = r1.persistNativeConfiguration(r2)
            if (r1 != r3) goto Lba
            return r3
        Lba:
            r2 = r4
        Lbb:
            com.unity3d.services.core.configuration.ConfigurationReader r1 = r2.legacyConfigurationReader
            com.unity3d.services.core.configuration.Configuration r1 = r1.getCurrentConfiguration()
            r1.deleteFromDisk()
            com.unity3d.ads.core.data.repository.SessionRepository r1 = r2.sessionRepository
            com.unity3d.ads.core.data.model.InitializationState r3 = com.unity3d.ads.core.data.model.InitializationState.INITIALIZED
            r1.setInitializationState(r3)
            com.unity3d.ads.core.data.manager.SDKPropertiesManager r1 = r2.sdkPropertiesManager
            r1.setInitialized(r7)
            com.unity3d.ads.core.domain.TriggerInitializeListener r1 = r2.triggerInitializeListener
            r1.success()
            r2.setupDiagnosticEvents()
            kotlin.Unit r1 = kotlin.Unit.f60915a
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidInitializeBoldSDK.initializationSuccess(kotlin.time.TimeMark, java.lang.String, boolean, rs.c):java.lang.Object");
    }

    private final void setupDiagnosticEvents() {
        NativeConfigurationOuterClass.DiagnosticEventsConfiguration config = this.sessionRepository.getNativeConfiguration().getDiagnosticEvents();
        DiagnosticEventRepository diagnosticEventRepository = this.diagnosticEventRepository;
        Intrinsics.checkNotNullExpressionValue(config, "config");
        diagnosticEventRepository.configure(config);
    }

    @Override // com.unity3d.ads.core.domain.InitializeBoldSDK
    @Nullable
    public Object invoke(@NotNull String str, @NotNull c<? super Unit> cVar) {
        Object g10 = e.g(this.defaultDispatcher, new AndroidInitializeBoldSDK$invoke$2(this, str, null), cVar);
        if (g10 == kotlin.coroutines.intrinsics.a.f()) {
            return g10;
        }
        return Unit.f60915a;
    }
}
