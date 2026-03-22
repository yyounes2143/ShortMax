package com.unity3d.ads.core.domain;

import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.adplayer.ExposedFunctionLocation;
import com.unity3d.ads.adplayer.Invocation;
import com.unity3d.ads.core.data.model.AdData;
import com.unity3d.ads.core.data.model.AdDataRefreshToken;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.model.ImpressionConfig;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.attribution.AndroidAttribution;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt;
import com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady;
import com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd;
import com.unity3d.ads.core.domain.om.AndroidOmStartSession;
import com.unity3d.ads.core.domain.om.GetOmData;
import com.unity3d.ads.core.domain.om.IsOMActivated;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.domain.om.OmImpressionOccurred;
import com.unity3d.ads.core.domain.scar.LoadScarAd;
import com.unity3d.services.core.di.IServiceComponent;
import com.unity3d.services.core.di.IServiceProvider;
import com.unity3d.services.core.network.model.RequestType;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.p0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kt.b;
import kt.f;
import ms.k;
import org.jetbrains.annotations.NotNull;
import rs.c;
/* compiled from: HandleInvocationsFromAdViewer.kt */
@Metadata
/* loaded from: classes7.dex */
public final class HandleInvocationsFromAdViewer implements IServiceComponent {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String KEY_AD_DATA = "adData";
    @NotNull
    public static final String KEY_AD_DATA_REFRESH_TOKEN = "adDataRefreshToken";
    @NotNull
    public static final String KEY_AD_STRING = "adString";
    @NotNull
    public static final String KEY_AD_TYPE = "type";
    @NotNull
    public static final String KEY_AD_UNIT_ID = "adUnitId";
    @NotNull
    public static final String KEY_DOWNLOAD_PRIORITY = "priority";
    @NotNull
    public static final String KEY_DOWNLOAD_URL = "url";
    @NotNull
    public static final String KEY_IMPRESSION_CONFIG = "impressionConfig";
    @NotNull
    public static final String KEY_IS_HEADER_BIDDING = "isHeaderBidding";
    @NotNull
    public static final String KEY_LOAD_OPTIONS = "loadOptions";
    @NotNull
    public static final String KEY_NATIVE_CONTEXT = "nativeContext";
    @NotNull
    public static final String KEY_OMID = "openMeasurement";
    @NotNull
    public static final String KEY_OMJS_SERVICE = "serviceFilePath";
    @NotNull
    public static final String KEY_OMJS_SESSION = "sessionFilePath";
    @NotNull
    public static final String KEY_OM_PARTNER = "partnerName";
    @NotNull
    public static final String KEY_OM_PARTNER_VERSION = "partnerVersion";
    @NotNull
    public static final String KEY_OM_VERSION = "version";
    @NotNull
    public static final String KEY_PACKAGE_NAME = "packageName";
    @NotNull
    public static final String KEY_PLACEMENT_ID = "placementId";
    @NotNull
    public static final String KEY_PLACEMENT_NAME = "placementName";
    @NotNull
    public static final String KEY_PRIVACY_UPDATE_CONTENT = "content";
    @NotNull
    public static final String KEY_PRIVACY_UPDATE_VERSION = "version";
    @NotNull
    public static final String KEY_QUERY_ID = "queryId";
    @NotNull
    public static final String KEY_TRACKING_TOKEN = "trackingToken";
    @NotNull
    public static final String KEY_VIDEO_LENGTH = "videoLength";

    /* compiled from: HandleInvocationsFromAdViewer.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    @Override // com.unity3d.services.core.di.IServiceComponent
    @NotNull
    public IServiceProvider getServiceProvider() {
        return IServiceComponent.DefaultImpls.getServiceProvider(this);
    }

    @NotNull
    public final b<Invocation> invoke(@NotNull f<Invocation> onInvocations, @NotNull String adData, @NotNull String adDataRefreshToken, @NotNull String impressionConfig, @NotNull final AdObject adObject, @NotNull Function1<? super c<? super Unit>, ? extends Object> onSubscription) {
        Intrinsics.checkNotNullParameter(onInvocations, "onInvocations");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(adDataRefreshToken, "adDataRefreshToken");
        Intrinsics.checkNotNullParameter(impressionConfig, "impressionConfig");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        Intrinsics.checkNotNullParameter(onSubscription, "onSubscription");
        final String m4708constructorimpl = AdData.m4708constructorimpl(adData);
        final String m4722constructorimpl = ImpressionConfig.m4722constructorimpl(impressionConfig);
        final String m4715constructorimpl = AdDataRefreshToken.m4715constructorimpl(adDataRefreshToken);
        return kotlinx.coroutines.flow.c.O(kotlinx.coroutines.flow.c.Q(onInvocations, new HandleInvocationsFromAdViewer$invoke$1(onSubscription, null)), new HandleInvocationsFromAdViewer$invoke$2(p0.m(k.a(ExposedFunctionLocation.GET_AD_CONTEXT, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.m4729getAdContextyLuu4LI((AndroidGetAdPlayerContext) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidGetAdPlayerContext.class)), m4708constructorimpl, m4722constructorimpl, m4715constructorimpl, (IsOMActivated) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(IsOMActivated.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.GET_CONNECTION_TYPE, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getConnectionType((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_DEVICE_VOLUME, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$3
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getDeviceVolume((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_DEVICE_MAX_VOLUME, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$4
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getDeviceMaxVolume((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_SCREEN_HEIGHT, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$5
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getScreenHeight((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_SCREEN_WIDTH, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$6
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getScreenWidth((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.OPEN_URL, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$7
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.openUrl((HandleOpenUrl) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(HandleOpenUrl.class)));
            }
        }), k.a(ExposedFunctionLocation.SET_ORIENTATION, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$8
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.setOrientation(AdObject.this);
            }
        }), k.a(ExposedFunctionLocation.SEND_OPERATIVE_EVENT, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$9
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.sendOperativeEvent((GetOperativeEventApi) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetOperativeEventApi.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.STORAGE_WRITE, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.writeStorage();
            }
        }), k.a(ExposedFunctionLocation.STORAGE_READ, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$11
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.readStorage();
            }
        }), k.a(ExposedFunctionLocation.STORAGE_DELETE, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.deleteStorage();
            }
        }), k.a(ExposedFunctionLocation.STORAGE_CLEAR, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$13
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.clearStorage();
            }
        }), k.a(ExposedFunctionLocation.STORAGE_GET_KEYS, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$14
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getKeysStorage();
            }
        }), k.a(ExposedFunctionLocation.STORAGE_GET, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$15
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getStorage();
            }
        }), k.a(ExposedFunctionLocation.STORAGE_SET, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$16
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.setStorage();
            }
        }), k.a(ExposedFunctionLocation.GET_PRIVACY_FSM, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$17
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getPrivacyFsm((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.SET_PRIVACY_FSM, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$18
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.setPrivacyFsm((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_PRIVACY, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$19
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getPrivacy((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.SET_PRIVACY, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$20
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.setPrivacy((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_ALLOWED_PII, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$21
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getAllowedPii((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.SET_ALLOWED_PII, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$22
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.setAllowedPii((DeviceInfoRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(DeviceInfoRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.GET_SESSION_TOKEN, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$23
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.getSessionToken((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.MARK_CAMPAIGN_STATE_SHOWN, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$24
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.markCampaignStateShown((CampaignRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CampaignRepository.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.REFRESH_AD_DATA, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$25
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.refreshAdData((Refresh) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(Refresh.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.UPDATE_CAMPAIGN_STATE, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$26
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.updateCampaignState((CampaignRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CampaignRepository.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.UPDATE_TRACKING_TOKEN, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$27
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.updateTrackingToken(AdObject.this);
            }
        }), k.a(ExposedFunctionLocation.SEND_PRIVACY_UPDATE_REQUEST, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$28
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.sendPrivacyUpdateRequest((SendPrivacyUpdateRequest) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SendPrivacyUpdateRequest.class)));
            }
        }), k.a(ExposedFunctionLocation.SEND_DIAGNOSTIC_EVENT, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$29
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.sendDiagnosticEvent((SendDiagnosticEvent) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SendDiagnosticEvent.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.INCREMENT_BANNER_IMPRESSION_COUNT, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$30
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.incrementBannerImpressionCount((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.DOWNLOAD, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$31
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.download((CacheFile) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(CacheFile.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.IS_FILE_CACHED, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$32
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.isFileCached((GetIsFileCache) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetIsFileCache.class)));
            }
        }), k.a(ExposedFunctionLocation.OM_START_SESSION, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$33
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.omStartSession((AndroidOmStartSession) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidOmStartSession.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.OM_FINISH_SESSION, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$34
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.omFinishSession((OmFinishSession) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(OmFinishSession.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.OM_IMPRESSION, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$35
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.omImpression((OmImpressionOccurred) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(OmImpressionOccurred.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.OM_GET_DATA, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$36
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.omGetData((GetOmData) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetOmData.class)));
            }
        }), k.a(ExposedFunctionLocation.IS_ATTRIBUTION_AVAILABLE, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$37
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.isAttributionAvailable((AndroidAttribution) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)));
            }
        }), k.a(ExposedFunctionLocation.ATTRIBUTION_REGISTER_VIEW, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$38
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.attributionRegisterView((AndroidAttribution) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.ATTRIBUTION_REGISTER_CLICK, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$39
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.attributionRegisterClick((AndroidAttribution) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(AndroidAttribution.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.LOAD_SCAR_AD, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$40
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.loadScarAd((LoadScarAd) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LoadScarAd.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.SHOW_SCAR_AD, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$41
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.showScarAd();
            }
        }), k.a(ExposedFunctionLocation.HEADER_BIDDING_TOKEN_INCREMENT_WINS, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$42
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.hbTokenIncrementWins((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.HEADER_BIDDING_TOKEN_INCREMENT_STARTS, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$43
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.hbTokenIncrementStarts((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.HEADER_BIDDING_TOKEN_RESET, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$44
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.hbTokenReset((SessionRepository) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(SessionRepository.class)));
            }
        }), k.a(ExposedFunctionLocation.LOAD_OFFERWALL_AD, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$45
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.loadOfferwallAd((LoadOfferwallAd) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(LoadOfferwallAd.class)), adObject);
            }
        }), k.a(ExposedFunctionLocation.SHOW_OFFERWALL_AD, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$46
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.showOfferwallAd();
            }
        }), k.a(ExposedFunctionLocation.IS_OFFERWALL_AD_READY, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$47
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.isOfferwallAdReady((GetIsOfferwallAdReady) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(GetIsOfferwallAdReady.class)));
            }
        }), k.a(ExposedFunctionLocation.REQUEST_GET, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$48
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.request(RequestType.GET, (ExecuteAdViewerRequest) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)));
            }
        }), k.a(ExposedFunctionLocation.REQUEST_POST, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$49
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.request(RequestType.POST, (ExecuteAdViewerRequest) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)));
            }
        }), k.a(ExposedFunctionLocation.REQUEST_HEAD, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$50
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.request(RequestType.HEAD, (ExecuteAdViewerRequest) HandleInvocationsFromAdViewer.this.getServiceProvider().getRegistry().getService("", Reflection.getOrCreateKotlinClass(ExecuteAdViewerRequest.class)));
            }
        }), k.a(ExposedFunctionLocation.SET_OPPORTUNITY_TTL, new Function0<ExposedFunction>() { // from class: com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer$invoke$definition$51
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final ExposedFunction invoke() {
                return CommonAdViewerExposedFunctionsKt.setOpportunityTTL(AdObject.this);
            }
        })), null));
    }
}
