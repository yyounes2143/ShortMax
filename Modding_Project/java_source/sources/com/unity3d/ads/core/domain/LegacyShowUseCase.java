package com.unity3d.ads.core.domain;

import at.q;
import com.google.protobuf.ByteString;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.UnityAdsShowOptions;
import com.unity3d.ads.adplayer.model.ShowStatus;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.Listeners;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.ShowStatusExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gatewayprotocol.v1.OperativeEventErrorDataKt;
import gatewayprotocol.v1.OperativeEventRequestOuterClass;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.TimeMark;
import kotlinx.coroutines.flow.o;
import kt.e;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* compiled from: LegacyShowUseCase.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLegacyShowUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyShowUseCase.kt\ncom/unity3d/ads/core/domain/LegacyShowUseCase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 OperativeEventErrorDataKt.kt\ngatewayprotocol/v1/OperativeEventErrorDataKtKt\n*L\n1#1,370:1\n1#2:371\n1#2:373\n10#3:372\n*S KotlinDebug\n*F\n+ 1 LegacyShowUseCase.kt\ncom/unity3d/ads/core/domain/LegacyShowUseCase\n*L\n241#1:373\n241#1:372\n*E\n"})
/* loaded from: classes7.dex */
public final class LegacyShowUseCase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String KEY_OBJECT_ID = "objectId";
    @NotNull
    public static final String MESSAGE_AD_OBJECT_EXPIRED = "The ad has expired";
    @NotNull
    public static final String MESSAGE_AD_PLAYER_UNAVAILABLE = "Ad player is unavailable.";
    @NotNull
    public static final String MESSAGE_ALREADY_SHOWING = "Can't show a new ad unit when ad unit is already open";
    @NotNull
    public static final String MESSAGE_NO_AD_OBJECT = "No ad object found for opportunity id: ";
    @NotNull
    public static final String MESSAGE_OPPORTUNITY_ID = "No valid opportunity id provided";
    @NotNull
    public static final String MESSAGE_OPT_TIMEOUT = "timeout";
    @NotNull
    public static final String MESSAGE_PLACEMENT_NOT_LOADED = "Placement %s must be Loaded before calling Show";
    @NotNull
    public static final String MESSAGE_TIMEOUT = "[UnityAds] Timeout while trying to show ";
    @NotNull
    public static final String MSG_OPPORTUNITY_AND_PLACEMENT_NOT_MATCHING = "[UnityAds] Object ID and Placement ID provided does not match previously loaded ad";
    private static volatile boolean isFullscreenAdShowing;
    @Nullable
    private AdObject adObject;
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final GetInitializationState getInitializationState;
    @NotNull
    private final GetOperativeEventApi getOperativeEventApi;
    @NotNull
    private final e<Boolean> hasStarted;
    @Nullable
    private String placement;
    @NotNull
    private final SafeCallbackInvoke safeCallbackInvoke;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final Show show;
    @NotNull
    private final e<Boolean> timeoutCancellationRequested;
    @Nullable
    private UnityAdsShowOptions unityAdsShowOptions;

    /* compiled from: LegacyShowUseCase.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public LegacyShowUseCase(@NotNull Show show, @NotNull AdRepository adRepository, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull GetOperativeEventApi getOperativeEventApi, @NotNull GetInitializationState getInitializationState, @NotNull SessionRepository sessionRepository, @NotNull SafeCallbackInvoke safeCallbackInvoke) {
        Intrinsics.checkNotNullParameter(show, "show");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        this.show = show;
        this.adRepository = adRepository;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getOperativeEventApi = getOperativeEventApi;
        this.getInitializationState = getInitializationState;
        this.sessionRepository = sessionRepository;
        this.safeCallbackInvoke = safeCallbackInvoke;
        Boolean bool = Boolean.FALSE;
        this.hasStarted = o.a(bool);
        this.timeoutCancellationRequested = o.a(bool);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void bannerLeftApplication(TimeMark timeMark, String str, Listeners listeners) {
        DeviceLog.debug("Unity Ads Show Left Application for placement " + str);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_left_app", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, null, 44, null);
        listeners.onLeftApplication(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void cancelTimeout(TimeMark timeMark) {
        this.timeoutCancellationRequested.setValue(Boolean.TRUE);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_cancel_timeout", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, null, 44, null);
    }

    private final String getOpportunityId(UnityAdsShowOptions unityAdsShowOptions) throws IllegalArgumentException {
        Object opt;
        String obj;
        JSONObject data = unityAdsShowOptions.getData();
        if (data != null && (opt = data.opt("objectId")) != null && (obj = opt.toString()) != null) {
            return UUID.fromString(obj).toString();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Map<String, String> getTags(String str, Integer num, String str2) {
        Map<String, String> o10 = p0.o(k.a("operation", OperationType.SHOW.toString()), k.a("reason", str));
        if (num != null) {
            o10.put("reason_code", String.valueOf(num.intValue()));
        }
        if (str2 != null) {
            o10.put("reason_debug", str2);
        }
        return o10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AdObject getTmpAdObject(String str) {
        UUID fromString = UUID.fromString(str);
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(opportunityId)");
        ByteString byteString = ProtobufExtensionsKt.toByteString(fromString);
        AdObject ad2 = this.adRepository.getAd(byteString);
        if (ad2 != null) {
            return ad2;
        }
        String str2 = this.placement;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        ByteString EMPTY = ByteString.EMPTY;
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        return new AdObject(byteString, str3, EMPTY, false, null, null, null, false, null, null, null, new UnityAdsLoadOptions(), false, DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_UNSPECIFIED, null, null, 50680, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object sendOperativeError(OperativeEventRequestOuterClass.OperativeEventErrorType operativeEventErrorType, String str, AdObject adObject, c<? super Unit> cVar) {
        OperativeEventErrorDataKt.Dsl.Companion companion = OperativeEventErrorDataKt.Dsl.Companion;
        OperativeEventRequestOuterClass.OperativeEventErrorData.Builder newBuilder = OperativeEventRequestOuterClass.OperativeEventErrorData.newBuilder();
        Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
        OperativeEventErrorDataKt.Dsl _create = companion._create(newBuilder);
        _create.setErrorType(operativeEventErrorType);
        _create.setMessage(str);
        OperativeEventRequestOuterClass.OperativeEventErrorData _build = _create._build();
        GetOperativeEventApi getOperativeEventApi = this.getOperativeEventApi;
        OperativeEventRequestOuterClass.OperativeEventType operativeEventType = OperativeEventRequestOuterClass.OperativeEventType.OPERATIVE_EVENT_TYPE_SHOW_ERROR;
        ByteString byteString = _build.toByteString();
        Intrinsics.checkNotNullExpressionValue(byteString, "errorData.toByteString()");
        Object invoke = getOperativeEventApi.invoke(operativeEventType, adObject, byteString, cVar);
        if (invoke == kotlin.coroutines.intrinsics.a.f()) {
            return invoke;
        }
        return Unit.f60915a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showClicked(TimeMark timeMark, final String str, final Listeners listeners) {
        DeviceLog.debug("Unity Ads Show Clicked for placement " + str);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_clicked", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, null, 44, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$showClicked$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Listeners.this.onClick(str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showCompleted(TimeMark timeMark, final String str, final ShowStatus showStatus, final Listeners listeners, String str2, String str3) {
        DeviceLog.debug("Unity Ads Show Completed for placement " + str);
        Map c10 = p0.c();
        if (str2 != null) {
            String str4 = (String) c10.put("reason", str2);
        }
        if (str3 != null) {
            c10.put("reason_debug", str3);
        }
        Map b10 = p0.b(c10);
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        double elapsedMillis = TimeExtensionsKt.elapsedMillis(timeMark);
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_show_success_time", Double.valueOf(elapsedMillis), b10, null, this.adObject, null, 40, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$showCompleted$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                SessionRepository sessionRepository;
                Listeners listeners2 = Listeners.this;
                String str5 = str;
                ShowStatus showStatus2 = showStatus;
                sessionRepository = this.sessionRepository;
                NativeConfigurationOuterClass.ShowCompletionState defaultShowCompletionState = sessionRepository.getNativeConfiguration().getDefaultShowCompletionState();
                Intrinsics.checkNotNullExpressionValue(defaultShowCompletionState, "sessionRepository.native…efaultShowCompletionState");
                listeners2.onComplete(str5, ShowStatusExtensionsKt.toUnityAdsShowCompletionState(showStatus2, defaultShowCompletionState));
            }
        });
    }

    static /* synthetic */ void showCompleted$default(LegacyShowUseCase legacyShowUseCase, TimeMark timeMark, String str, ShowStatus showStatus, Listeners listeners, String str2, String str3, int i10, Object obj) {
        String str4;
        String str5;
        if ((i10 & 16) != 0) {
            str4 = null;
        } else {
            str4 = str2;
        }
        if ((i10 & 32) != 0) {
            str5 = null;
        } else {
            str5 = str3;
        }
        legacyShowUseCase.showCompleted(timeMark, str, showStatus, listeners, str4, str5);
    }

    private final q<String, UnityAds.UnityAdsShowError, String, Integer, String, c<? super Unit>, Object> showError(TimeMark timeMark, String str, String str2, Listeners listeners) {
        return new LegacyShowUseCase$showError$1(str, this, str2, timeMark, listeners, null);
    }

    private final void showStart(String str) {
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_started", null, null, null, getTmpAdObject(str), null, 46, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void showStarted(TimeMark timeMark, final String str, final Listeners listeners) {
        DeviceLog.debug("Unity Ads Show WV Start for placement " + str);
        this.hasStarted.setValue(Boolean.TRUE);
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_show_wv_started", Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark)), null, null, this.adObject, null, 44, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.LegacyShowUseCase$showStarted$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                Listeners.this.onStart(str);
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0059  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0072  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull android.app.Activity r26, @org.jetbrains.annotations.Nullable java.lang.String r27, @org.jetbrains.annotations.Nullable com.unity3d.ads.UnityAdsShowOptions r28, @org.jetbrains.annotations.NotNull com.unity3d.ads.core.data.model.Listeners r29, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r30) {
        /*
            Method dump skipped, instructions count: 814
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyShowUseCase.invoke(android.app.Activity, java.lang.String, com.unity3d.ads.UnityAdsShowOptions, com.unity3d.ads.core.data.model.Listeners, rs.c):java.lang.Object");
    }
}
