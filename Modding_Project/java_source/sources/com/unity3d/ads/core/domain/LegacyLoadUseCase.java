package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.protobuf.ByteString;
import com.unity3d.ads.IUnityAdsLoadListener;
import com.unity3d.ads.UnityAdsLoadOptions;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.AdObjectState;
import com.unity3d.ads.core.data.model.LoadResult;
import com.unity3d.ads.core.data.model.OperationType;
import com.unity3d.ads.core.data.repository.AdRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.GetInitializationState;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.extensions.TimeExtensionsKt;
import com.unity3d.services.banners.UnityBannerSize;
import com.unity3d.services.core.log.DeviceLog;
import gatewayprotocol.v1.AdRequestOuterClass;
import gatewayprotocol.v1.BannerSizeKt;
import gatewayprotocol.v1.DiagnosticEventRequestOuterClass;
import gatewayprotocol.v1.HeaderBiddingAdMarkupOuterClass;
import java.util.Map;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlin.time.TimeMark;
import kotlin.time.h;
import ms.k;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
/* compiled from: LegacyLoadUseCase.kt */
@Metadata
@SourceDebugExtension({"SMAP\nLegacyLoadUseCase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegacyLoadUseCase.kt\ncom/unity3d/ads/core/domain/LegacyLoadUseCase\n+ 2 BannerSizeKt.kt\ngatewayprotocol/v1/BannerSizeKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,273:1\n10#2:274\n1#3:275\n*S KotlinDebug\n*F\n+ 1 LegacyLoadUseCase.kt\ncom/unity3d/ads/core/domain/LegacyLoadUseCase\n*L\n184#1:274\n184#1:275\n*E\n"})
/* loaded from: classes7.dex */
public final class LegacyLoadUseCase {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String KEY_AD_MARKUP = "adMarkup";
    @NotNull
    public static final String KEY_OBJECT_ID = "objectId";
    @Nullable
    private String adMarkup;
    @NotNull
    private final AdRepository adRepository;
    @NotNull
    private final AwaitInitialization awaitInitialization;
    @NotNull
    private final CleanUpWhenOpportunityExpires cleanUpWhenOpportunityExpires;
    @NotNull
    private final GetInitializationState getInitializationState;
    private boolean isBanner;
    private boolean isHeaderBidding;
    @Nullable
    private IUnityAdsLoadListener listener;
    @NotNull
    private final Load load;
    private UnityAdsLoadOptions loadOptions;
    @Nullable
    private ByteString opportunity;
    @Nullable
    private String placement;
    @NotNull
    private final SafeCallbackInvoke safeCallbackInvoke;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;
    @Nullable
    private TimeMark startTime;

    /* compiled from: LegacyLoadUseCase.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public LegacyLoadUseCase(@NotNull Load load, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull GetInitializationState getInitializationState, @NotNull AwaitInitialization awaitInitialization, @NotNull SessionRepository sessionRepository, @NotNull AdRepository adRepository, @NotNull SafeCallbackInvoke safeCallbackInvoke, @NotNull CleanUpWhenOpportunityExpires cleanUpWhenOpportunityExpires) {
        Intrinsics.checkNotNullParameter(load, "load");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(getInitializationState, "getInitializationState");
        Intrinsics.checkNotNullParameter(awaitInitialization, "awaitInitialization");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(adRepository, "adRepository");
        Intrinsics.checkNotNullParameter(safeCallbackInvoke, "safeCallbackInvoke");
        Intrinsics.checkNotNullParameter(cleanUpWhenOpportunityExpires, "cleanUpWhenOpportunityExpires");
        this.load = load;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.getInitializationState = getInitializationState;
        this.awaitInitialization = awaitInitialization;
        this.sessionRepository = sessionRepository;
        this.adRepository = adRepository;
        this.safeCallbackInvoke = safeCallbackInvoke;
        this.cleanUpWhenOpportunityExpires = cleanUpWhenOpportunityExpires;
    }

    private final String getAdMarkup(UnityAdsLoadOptions unityAdsLoadOptions) {
        Object opt;
        JSONObject data = unityAdsLoadOptions.getData();
        if (data != null && (opt = data.opt(KEY_AD_MARKUP)) != null) {
            return opt.toString();
        }
        return null;
    }

    private final DiagnosticEventRequestOuterClass.DiagnosticAdType getAdType() {
        if (this.isBanner) {
            return DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_BANNER;
        }
        return DiagnosticEventRequestOuterClass.DiagnosticAdType.DIAGNOSTIC_AD_TYPE_FULLSCREEN;
    }

    private final AdRequestOuterClass.BannerSize getBannerSize(UnityBannerSize unityBannerSize) {
        if (unityBannerSize != null) {
            BannerSizeKt.Dsl.Companion companion = BannerSizeKt.Dsl.Companion;
            AdRequestOuterClass.BannerSize.Builder newBuilder = AdRequestOuterClass.BannerSize.newBuilder();
            Intrinsics.checkNotNullExpressionValue(newBuilder, "newBuilder()");
            BannerSizeKt.Dsl _create = companion._create(newBuilder);
            _create.setWidth(unityBannerSize.getWidth());
            _create.setHeight(unityBannerSize.getHeight());
            return _create._build();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup getHeaderBiddingAdMarkup(String str) {
        if (str != null && !StringsKt.t0(str)) {
            try {
                return HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.parseFrom(ProtobufExtensionsKt.fromBase64$default(str, false, 1, null).toByteArray());
            } catch (Exception unused) {
                return null;
            }
        }
        return HeaderBiddingAdMarkupOuterClass.HeaderBiddingAdMarkup.getDefaultInstance();
    }

    private final String getOpportunityId(UnityAdsLoadOptions unityAdsLoadOptions) {
        Object opt;
        JSONObject data = unityAdsLoadOptions.getData();
        if (data != null && (opt = data.opt("objectId")) != null) {
            return opt.toString();
        }
        return null;
    }

    private final Map<String, String> getTags(String str, String str2) {
        Map<String, String> o10 = p0.o(k.a("state", GetInitializationState.DefaultImpls.invoke$default(this.getInitializationState, false, 1, null).toString()), k.a("operation", OperationType.LOAD.toString()));
        if (str != null && str.length() != 0) {
            o10.put("reason", str);
        }
        if (str2 != null && str2.length() != 0) {
            o10.put("reason_debug", str2);
        }
        return o10;
    }

    static /* synthetic */ Map getTags$default(LegacyLoadUseCase legacyLoadUseCase, String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str = null;
        }
        if ((i10 & 2) != 0) {
            str2 = null;
        }
        return legacyLoadUseCase.getTags(str, str2);
    }

    private final AdObject getTmpAdObject(String str, boolean z10) {
        UUID fromString = UUID.fromString(str);
        Intrinsics.checkNotNullExpressionValue(fromString, "fromString(opportunityId)");
        ByteString byteString = ProtobufExtensionsKt.toByteString(fromString);
        String str2 = this.placement;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        ByteString EMPTY = ByteString.EMPTY;
        UnityAdsLoadOptions unityAdsLoadOptions = this.loadOptions;
        if (unityAdsLoadOptions == null) {
            Intrinsics.throwUninitializedPropertyAccessException(HandleInvocationsFromAdViewer.KEY_LOAD_OPTIONS);
            unityAdsLoadOptions = null;
        }
        UnityAdsLoadOptions unityAdsLoadOptions2 = unityAdsLoadOptions;
        boolean z11 = this.isHeaderBidding;
        DiagnosticEventRequestOuterClass.DiagnosticAdType adType = getAdType();
        Intrinsics.checkNotNullExpressionValue(EMPTY, "EMPTY");
        return new AdObject(byteString, str3, EMPTY, z10, null, null, null, false, null, null, null, unityAdsLoadOptions2, z11, adType, null, null, 50672, null);
    }

    static /* synthetic */ AdObject getTmpAdObject$default(LegacyLoadUseCase legacyLoadUseCase, String str, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return legacyLoadUseCase.getTmpAdObject(str, z10);
    }

    public static /* synthetic */ Object invoke$default(LegacyLoadUseCase legacyLoadUseCase, Context context, String str, UnityAdsLoadOptions unityAdsLoadOptions, IUnityAdsLoadListener iUnityAdsLoadListener, UnityBannerSize unityBannerSize, c cVar, int i10, Object obj) {
        if ((i10 & 16) != 0) {
            unityBannerSize = null;
        }
        return legacyLoadUseCase.invoke(context, str, unityAdsLoadOptions, iUnityAdsLoadListener, unityBannerSize, cVar);
    }

    private final void loadFailure(String str, final LoadResult.Failure failure) {
        Double d10;
        DeviceLog.debug("Unity Ads Load Failure for placement: " + this.placement + " reason: " + failure.getError() + " :: " + failure.getMessage());
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        TimeMark timeMark = this.startTime;
        if (timeMark != null) {
            d10 = Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark));
        } else {
            d10 = null;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_load_failure_time", d10, getTags(failure.getReason(), failure.getReasonDebug()), null, getTmpAdObject(str, failure.isScarAd()), null, 40, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadFailure$1
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
                IUnityAdsLoadListener iUnityAdsLoadListener;
                String str2;
                iUnityAdsLoadListener = LegacyLoadUseCase.this.listener;
                if (iUnityAdsLoadListener != null) {
                    str2 = LegacyLoadUseCase.this.placement;
                    iUnityAdsLoadListener.onUnityAdsFailedToLoad(str2, failure.getError(), failure.getMessage());
                }
            }
        });
    }

    private final TimeMark loadStart(String str) {
        long b10 = h.f61257a.b();
        SendDiagnosticEvent.DefaultImpls.invoke$default(this.sendDiagnosticEvent, "native_load_started", null, getTags$default(this, null, null, 3, null), null, getTmpAdObject$default(this, str, false, 2, null), null, 42, null);
        return h.a.b(b10);
    }

    private final void loadSuccess(AdObject adObject) {
        Double d10;
        DeviceLog.debug("Unity Ads Load Success for placement: " + this.placement);
        adObject.getState().setValue(AdObjectState.LOADED);
        this.cleanUpWhenOpportunityExpires.invoke(adObject);
        SendDiagnosticEvent sendDiagnosticEvent = this.sendDiagnosticEvent;
        TimeMark timeMark = this.startTime;
        if (timeMark != null) {
            d10 = Double.valueOf(TimeExtensionsKt.elapsedMillis(timeMark));
        } else {
            d10 = null;
        }
        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_load_success_time", d10, getTags$default(this, null, null, 3, null), null, adObject, null, 40, null);
        this.safeCallbackInvoke.invoke(new Function0<Unit>() { // from class: com.unity3d.ads.core.domain.LegacyLoadUseCase$loadSuccess$1
            /* JADX INFO: Access modifiers changed from: package-private */
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
                IUnityAdsLoadListener iUnityAdsLoadListener;
                String str;
                iUnityAdsLoadListener = LegacyLoadUseCase.this.listener;
                if (iUnityAdsLoadListener != null) {
                    str = LegacyLoadUseCase.this.placement;
                    iUnityAdsLoadListener.onUnityAdsAdLoaded(str);
                }
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:13:0x003e, B:40:0x00dd, B:42:0x00e1, B:43:0x0107, B:45:0x010b, B:46:0x0115, B:48:0x0119), top: B:59:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x010b A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:13:0x003e, B:40:0x00dd, B:42:0x00e1, B:43:0x0107, B:45:0x010b, B:46:0x0115, B:48:0x0119), top: B:59:0x003e }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0115 A[Catch: all -> 0x0043, TryCatch #1 {all -> 0x0043, blocks: (B:13:0x003e, B:40:0x00dd, B:42:0x00e1, B:43:0x0107, B:45:0x010b, B:46:0x0115, B:48:0x0119), top: B:59:0x003e }] */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(@org.jetbrains.annotations.NotNull android.content.Context r27, @org.jetbrains.annotations.Nullable java.lang.String r28, @org.jetbrains.annotations.NotNull com.unity3d.ads.UnityAdsLoadOptions r29, @org.jetbrains.annotations.Nullable com.unity3d.ads.IUnityAdsLoadListener r30, @org.jetbrains.annotations.Nullable com.unity3d.services.banners.UnityBannerSize r31, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r32) {
        /*
            Method dump skipped, instructions count: 328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.LegacyLoadUseCase.invoke(android.content.Context, java.lang.String, com.unity3d.ads.UnityAdsLoadOptions, com.unity3d.ads.IUnityAdsLoadListener, com.unity3d.services.banners.UnityBannerSize, rs.c):java.lang.Object");
    }
}
