package com.unity3d.ads.core.domain.exposure;

import android.util.Base64;
import com.unity3d.ads.adplayer.ExposedFunction;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.CampaignRepository;
import com.unity3d.ads.core.data.repository.DeviceInfoRepository;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.AndroidGetAdPlayerContext;
import com.unity3d.ads.core.domain.CacheFile;
import com.unity3d.ads.core.domain.ExecuteAdViewerRequest;
import com.unity3d.ads.core.domain.GetIsFileCache;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.domain.HandleOpenUrl;
import com.unity3d.ads.core.domain.Refresh;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.ads.core.domain.SendPrivacyUpdateRequest;
import com.unity3d.ads.core.domain.attribution.AndroidAttribution;
import com.unity3d.ads.core.domain.events.GetOperativeEventApi;
import com.unity3d.ads.core.domain.offerwall.GetIsOfferwallAdReady;
import com.unity3d.ads.core.domain.offerwall.LoadOfferwallAd;
import com.unity3d.ads.core.domain.om.AndroidOmStartSession;
import com.unity3d.ads.core.domain.om.GetOmData;
import com.unity3d.ads.core.domain.om.IsOMActivated;
import com.unity3d.ads.core.domain.om.OmFinishSession;
import com.unity3d.ads.core.domain.om.OmImpressionOccurred;
import com.unity3d.ads.core.domain.scar.LoadScarAd;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.ads.core.utils.ContinuationFromCallback;
import com.unity3d.services.core.api.Storage;
import com.unity3d.services.core.network.model.RequestType;
import gatewayprotocol.v1.AllowedPiiKt;
import gatewayprotocol.v1.AllowedPiiOuterClass;
import gatewayprotocol.v1.DynamicDeviceInfoOuterClass;
import java.util.Iterator;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.n;
import kotlin.collections.p0;
import kotlin.coroutines.intrinsics.a;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference0Impl;
import kotlin.time.DurationUnit;
import kotlin.time.b;
import kt.e;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
import rs.c;
import rs.f;
/* compiled from: CommonAdViewerExposedFunctions.kt */
@Metadata
/* loaded from: classes7.dex */
public final class CommonAdViewerExposedFunctionsKt {
    @NotNull
    public static final ExposedFunction attributionRegisterClick(@NotNull final AndroidAttribution androidAttribution, @NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(androidAttribution, "androidAttribution");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$attributionRegisterClick$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                AndroidAttribution androidAttribution2 = AndroidAttribution.this;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return androidAttribution2.registerClick((String) obj, adObject, cVar);
            }
        };
    }

    @NotNull
    public static final ExposedFunction attributionRegisterView(@NotNull final AndroidAttribution androidAttribution, @NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(androidAttribution, "androidAttribution");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$attributionRegisterView$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                AndroidAttribution androidAttribution2 = AndroidAttribution.this;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return androidAttribution2.registerView((String) obj, adObject, cVar);
            }
        };
    }

    @NotNull
    public static final ExposedFunction clearStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$clearStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Storage.clear((String) obj, new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }

    @NotNull
    public static final ExposedFunction deleteStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$deleteStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Storage.delete((String) obj, (String) obj2, new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }

    @NotNull
    public static final ExposedFunction download(@NotNull CacheFile cacheFile, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(cacheFile, "cacheFile");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$download$1(cacheFile, adObject);
    }

    @NotNull
    /* renamed from: getAdContext-yLuu4LI  reason: not valid java name */
    public static final ExposedFunction m4729getAdContextyLuu4LI(@NotNull AndroidGetAdPlayerContext getAndroidAdPlayerContext, @NotNull String adData, @NotNull String impressionConfig, @NotNull String adDataRefreshToken, @NotNull IsOMActivated isOMActivated, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(getAndroidAdPlayerContext, "getAndroidAdPlayerContext");
        Intrinsics.checkNotNullParameter(adData, "adData");
        Intrinsics.checkNotNullParameter(impressionConfig, "impressionConfig");
        Intrinsics.checkNotNullParameter(adDataRefreshToken, "adDataRefreshToken");
        Intrinsics.checkNotNullParameter(isOMActivated, "isOMActivated");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$getAdContext$1(adData, impressionConfig, adDataRefreshToken, getAndroidAdPlayerContext, adObject, isOMActivated);
    }

    @NotNull
    public static final ExposedFunction getAllowedPii(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getAllowedPii$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                String encodeToString = Base64.encodeToString(DeviceInfoRepository.this.getAllowedPii().getValue().toByteArray(), 2);
                Intrinsics.checkNotNullExpressionValue(encodeToString, "encodeToString(deviceInf…eArray(), Base64.NO_WRAP)");
                return encodeToString;
            }
        };
    }

    @NotNull
    public static final ExposedFunction getConnectionType(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getConnectionType$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                DynamicDeviceInfoOuterClass.ConnectionType connectionType = DeviceInfoRepository.this.getDynamicDeviceInfo().getConnectionType();
                Intrinsics.checkNotNullExpressionValue(connectionType, "deviceInfoRepository.dyn…DeviceInfo.connectionType");
                return connectionType;
            }
        };
    }

    @NotNull
    public static final ExposedFunction getDeviceMaxVolume(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getDeviceMaxVolume$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                return kotlin.coroutines.jvm.internal.a.b(DeviceInfoRepository.this.getDynamicDeviceInfo().getAndroid().getMaxVolume());
            }
        };
    }

    @NotNull
    public static final ExposedFunction getDeviceVolume(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getDeviceVolume$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                return kotlin.coroutines.jvm.internal.a.b(DeviceInfoRepository.this.getDynamicDeviceInfo().getAndroid().getVolume());
            }
        };
    }

    @NotNull
    public static final ExposedFunction getKeysStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getKeysStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Object obj3 = objArr[2];
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.Boolean");
                Storage.getKeys((String) obj, (String) obj2, (Boolean) obj3, new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }

    @NotNull
    public static final ExposedFunction getPrivacy(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new CommonAdViewerExposedFunctionsKt$getPrivacy$1(sessionRepository);
    }

    @NotNull
    public static final ExposedFunction getPrivacyFsm(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new CommonAdViewerExposedFunctionsKt$getPrivacyFsm$1(sessionRepository);
    }

    @NotNull
    public static final ExposedFunction getScreenHeight(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getScreenHeight$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                return kotlin.coroutines.jvm.internal.a.d(DeviceInfoRepository.this.getDynamicDeviceInfo().getScreenHeight());
            }
        };
    }

    @NotNull
    public static final ExposedFunction getScreenWidth(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getScreenWidth$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                return kotlin.coroutines.jvm.internal.a.d(DeviceInfoRepository.this.getDynamicDeviceInfo().getScreenWidth());
            }
        };
    }

    @NotNull
    public static final ExposedFunction getSessionToken(@NotNull final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getSessionToken$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                return ProtobufExtensionsKt.toBase64$default(SessionRepository.this.getSessionToken(), false, 1, null);
            }
        };
    }

    @NotNull
    public static final ExposedFunction getStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$getStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Storage.get((String) obj, (String) obj2, new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }

    @NotNull
    public static final ExposedFunction hbTokenIncrementStarts(@NotNull final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$hbTokenIncrementStarts$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                SessionRepository.this.incrementTokenStartsCount();
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction hbTokenIncrementWins(@NotNull final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$hbTokenIncrementWins$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                SessionRepository.this.incrementTokenWinsCount();
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction hbTokenReset(@NotNull final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$hbTokenReset$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                SessionRepository.this.resetTokenCounters();
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction incrementBannerImpressionCount(@NotNull final SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$incrementBannerImpressionCount$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                SessionRepository.this.incrementBannerImpressionCount();
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction isAttributionAvailable(@NotNull final AndroidAttribution androidAttribution) {
        Intrinsics.checkNotNullParameter(androidAttribution, "androidAttribution");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$isAttributionAvailable$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                return AndroidAttribution.this.isAvailable(cVar);
            }
        };
    }

    @NotNull
    public static final ExposedFunction isFileCached(@NotNull final GetIsFileCache getIfFileCache) {
        Intrinsics.checkNotNullParameter(getIfFileCache, "getIfFileCache");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$isFileCached$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                return GetIsFileCache.this.invoke((String) obj, cVar);
            }
        };
    }

    @NotNull
    public static final ExposedFunction isOfferwallAdReady(@NotNull final GetIsOfferwallAdReady getIsOfferwallAdReady) {
        Intrinsics.checkNotNullParameter(getIsOfferwallAdReady, "getIsOfferwallAdReady");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$isOfferwallAdReady$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                String placementName = ((JSONObject) obj).optString(HandleInvocationsFromAdViewer.KEY_PLACEMENT_NAME);
                GetIsOfferwallAdReady getIsOfferwallAdReady2 = GetIsOfferwallAdReady.this;
                Intrinsics.checkNotNullExpressionValue(placementName, "placementName");
                return getIsOfferwallAdReady2.invoke(placementName, cVar);
            }
        };
    }

    @NotNull
    public static final ExposedFunction loadOfferwallAd(@NotNull LoadOfferwallAd loadOfferwallAd, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(loadOfferwallAd, "loadOfferwallAd");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$loadOfferwallAd$1(adObject, loadOfferwallAd);
    }

    @NotNull
    public static final ExposedFunction loadScarAd(@NotNull LoadScarAd loadScarAd, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(loadScarAd, "loadScarAd");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$loadScarAd$1(adObject, loadScarAd);
    }

    @NotNull
    public static final ExposedFunction markCampaignStateShown(@NotNull final CampaignRepository campaignRepository, @NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$markCampaignStateShown$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                CampaignRepository.this.setShowTimestamp(adObject.getOpportunityId());
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction omFinishSession(@NotNull OmFinishSession omFinishSession, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(omFinishSession, "omFinishSession");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$omFinishSession$1(omFinishSession, adObject);
    }

    @NotNull
    public static final ExposedFunction omGetData(@NotNull GetOmData getOmData) {
        Intrinsics.checkNotNullParameter(getOmData, "getOmData");
        return new CommonAdViewerExposedFunctionsKt$omGetData$1(getOmData);
    }

    @NotNull
    public static final ExposedFunction omImpression(@NotNull OmImpressionOccurred omImpressionOccurred, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(omImpressionOccurred, "omImpressionOccurred");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$omImpression$1(omImpressionOccurred, adObject);
    }

    @NotNull
    public static final ExposedFunction omStartSession(@NotNull AndroidOmStartSession omStartSession, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(omStartSession, "omStartSession");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$omStartSession$1(omStartSession, adObject);
    }

    @NotNull
    public static final ExposedFunction openUrl(@NotNull final HandleOpenUrl handleOpenUrl) {
        Intrinsics.checkNotNullParameter(handleOpenUrl, "handleOpenUrl");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$openUrl$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                String str = (String) obj;
                Object t02 = n.t0(objArr, 1);
                JSONObject jSONObject = t02 instanceof JSONObject ? (JSONObject) t02 : null;
                HandleOpenUrl.this.invoke(str, jSONObject != null ? jSONObject.optString("packageName") : null);
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction readStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$readStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Storage.read((String) obj, new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }

    @NotNull
    public static final ExposedFunction refreshAdData(@NotNull Refresh refresh, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(refresh, "refresh");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$refreshAdData$1(refresh, adObject);
    }

    @NotNull
    public static final ExposedFunction request(@NotNull RequestType type, @NotNull ExecuteAdViewerRequest executeAdViewerRequest) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(executeAdViewerRequest, "executeAdViewerRequest");
        return new CommonAdViewerExposedFunctionsKt$request$1(executeAdViewerRequest, type);
    }

    @NotNull
    public static final ExposedFunction sendDiagnosticEvent(@NotNull final SendDiagnosticEvent sendDiagnosticEvent, @NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$sendDiagnosticEvent$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                String obj;
                Object obj2 = objArr[0];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                String str = (String) obj2;
                Object obj3 = objArr[1];
                Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj3;
                Map c10 = p0.c();
                Iterator<String> keys = jSONObject.keys();
                Intrinsics.checkNotNullExpressionValue(keys, "tags.keys()");
                while (keys.hasNext()) {
                    String next = keys.next();
                    c10.put(next, jSONObject.getString(next));
                }
                Map b10 = p0.b(c10);
                Object t02 = n.t0(objArr, 2);
                SendDiagnosticEvent.DefaultImpls.invoke$default(SendDiagnosticEvent.this, str, (t02 == null || (obj = t02.toString()) == null) ? null : kotlin.coroutines.jvm.internal.a.b(Double.parseDouble(obj)), b10, null, adObject, null, 40, null);
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction sendOperativeEvent(@NotNull GetOperativeEventApi getOperativeEventApi, @NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(getOperativeEventApi, "getOperativeEventApi");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$sendOperativeEvent$1(getOperativeEventApi, adObject);
    }

    @NotNull
    public static final ExposedFunction sendPrivacyUpdateRequest(@NotNull SendPrivacyUpdateRequest sendPrivacyUpdateRequest) {
        Intrinsics.checkNotNullParameter(sendPrivacyUpdateRequest, "sendPrivacyUpdateRequest");
        return new CommonAdViewerExposedFunctionsKt$sendPrivacyUpdateRequest$1(sendPrivacyUpdateRequest);
    }

    @NotNull
    public static final ExposedFunction setAllowedPii(@NotNull final DeviceInfoRepository deviceInfoRepository) {
        Intrinsics.checkNotNullParameter(deviceInfoRepository, "deviceInfoRepository");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setAllowedPii$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                AllowedPiiOuterClass.AllowedPii value;
                final AllowedPiiKt.Dsl _create;
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                JSONObject jSONObject = (JSONObject) obj;
                e<AllowedPiiOuterClass.AllowedPii> allowedPii = DeviceInfoRepository.this.getAllowedPii();
                do {
                    value = allowedPii.getValue();
                    AllowedPiiKt.Dsl.Companion companion = AllowedPiiKt.Dsl.Companion;
                    AllowedPiiOuterClass.AllowedPii.Builder builder = value.toBuilder();
                    Intrinsics.checkNotNullExpressionValue(builder, "this.toBuilder()");
                    _create = companion._create(builder);
                    new MutablePropertyReference0Impl(_create) { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setAllowedPii$1$1$1$2
                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                        @Nullable
                        public Object get() {
                            return Boolean.valueOf(((AllowedPiiKt.Dsl) this.receiver).getIdfa());
                        }

                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
                        public void set(@Nullable Object obj2) {
                            ((AllowedPiiKt.Dsl) this.receiver).setIdfa(((Boolean) obj2).booleanValue());
                        }
                    }.set(kotlin.coroutines.jvm.internal.a.a(jSONObject.optBoolean("idfa")));
                    new MutablePropertyReference0Impl(_create) { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setAllowedPii$1$1$1$4
                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KProperty0
                        @Nullable
                        public Object get() {
                            return Boolean.valueOf(((AllowedPiiKt.Dsl) this.receiver).getIdfv());
                        }

                        @Override // kotlin.jvm.internal.MutablePropertyReference0Impl, kotlin.reflect.KMutableProperty0
                        public void set(@Nullable Object obj2) {
                            ((AllowedPiiKt.Dsl) this.receiver).setIdfv(((Boolean) obj2).booleanValue());
                        }
                    }.set(kotlin.coroutines.jvm.internal.a.a(jSONObject.optBoolean("idfv")));
                } while (!allowedPii.b(value, _create._build()));
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction setOpportunityTTL(@NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setOpportunityTTL$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Int");
                int intValue = ((Integer) obj).intValue();
                e<b> ttl = AdObject.this.getTtl();
                b.a aVar = b.f61250b;
                ttl.setValue(b.g(kotlin.time.c.s(intValue, DurationUnit.SECONDS)));
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction setOrientation(@NotNull AdObject adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new CommonAdViewerExposedFunctionsKt$setOrientation$1(adObject);
    }

    @NotNull
    public static final ExposedFunction setPrivacy(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new CommonAdViewerExposedFunctionsKt$setPrivacy$1(sessionRepository);
    }

    @NotNull
    public static final ExposedFunction setPrivacyFsm(@NotNull SessionRepository sessionRepository) {
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        return new CommonAdViewerExposedFunctionsKt$setPrivacyFsm$1(sessionRepository);
    }

    @NotNull
    public static final ExposedFunction setStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$setStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Object obj2 = objArr[1];
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.String");
                Storage.set((String) obj, (String) obj2, objArr[2], new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }

    @NotNull
    public static final ExposedFunction showOfferwallAd() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$showOfferwallAd$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction showScarAd() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$showScarAd$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction updateCampaignState(@NotNull final CampaignRepository campaignRepository, @NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(campaignRepository, "campaignRepository");
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$updateCampaignState$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            /* JADX WARN: Code restructure failed: missing block: B:22:0x0069, code lost:
                if (r0 != null) goto L19;
             */
            @org.jetbrains.annotations.Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object invoke2(@org.jetbrains.annotations.NotNull java.lang.Object[] r7, @org.jetbrains.annotations.NotNull rs.c<? super kotlin.Unit> r8) {
                /*
                    r6 = this;
                    java.lang.Object r7 = kotlin.collections.n.l0(r7)
                    boolean r8 = r7 instanceof org.json.JSONObject
                    r0 = 0
                    if (r8 == 0) goto Lc
                    org.json.JSONObject r7 = (org.json.JSONObject) r7
                    goto Ld
                Lc:
                    r7 = r0
                Ld:
                    if (r7 == 0) goto Lab
                    java.lang.String r8 = "data"
                    java.lang.String r1 = r7.optString(r8)
                    r2 = 1
                    r3 = 0
                    if (r1 == 0) goto L22
                    boolean r4 = kotlin.text.StringsKt.t0(r1)
                    if (r4 == 0) goto L20
                    goto L22
                L20:
                    r4 = r3
                    goto L23
                L22:
                    r4 = r2
                L23:
                    if (r4 != 0) goto La3
                    java.lang.String r4 = "dataVersion"
                    int r7 = r7.optInt(r4)
                    if (r7 == 0) goto L9b
                    com.unity3d.ads.core.data.model.AdObject r4 = com.unity3d.ads.core.data.model.AdObject.this
                    com.google.protobuf.ByteString r4 = r4.getOpportunityId()
                    com.unity3d.ads.core.data.model.AdObject r5 = com.unity3d.ads.core.data.model.AdObject.this
                    java.lang.String r5 = r5.getPlacementId()
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r8)
                    com.google.protobuf.ByteString r8 = com.unity3d.ads.core.extensions.ProtobufExtensionsKt.fromBase64$default(r1, r3, r2, r0)
                    boolean r0 = r8.isEmpty()
                    if (r0 != 0) goto L93
                    com.unity3d.ads.core.data.repository.CampaignRepository r0 = r2
                    gatewayprotocol.v1.CampaignStateOuterClass$Campaign r0 = r0.getCampaign(r4)
                    if (r0 == 0) goto L6c
                    gatewayprotocol.v1.CampaignKt$Dsl$Companion r1 = gatewayprotocol.v1.CampaignKt.Dsl.Companion
                    com.google.protobuf.GeneratedMessageLite$Builder r0 = r0.toBuilder()
                    java.lang.String r2 = "this.toBuilder()"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r2)
                    gatewayprotocol.v1.CampaignStateOuterClass$Campaign$Builder r0 = (gatewayprotocol.v1.CampaignStateOuterClass.Campaign.Builder) r0
                    gatewayprotocol.v1.CampaignKt$Dsl r0 = r1._create(r0)
                    r0.setData(r8)
                    r0.setDataVersion(r7)
                    gatewayprotocol.v1.CampaignStateOuterClass$Campaign r0 = r0._build()
                    if (r0 == 0) goto L6c
                    goto L8b
                L6c:
                    gatewayprotocol.v1.CampaignKt$Dsl$Companion r0 = gatewayprotocol.v1.CampaignKt.Dsl.Companion
                    gatewayprotocol.v1.CampaignStateOuterClass$Campaign$Builder r1 = gatewayprotocol.v1.CampaignStateOuterClass.Campaign.newBuilder()
                    java.lang.String r2 = "newBuilder()"
                    kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r1, r2)
                    gatewayprotocol.v1.CampaignKt$Dsl r0 = r0._create(r1)
                    r0.setData(r8)
                    r0.setDataVersion(r7)
                    r0.setPlacementId(r5)
                    r0.setImpressionOpportunityId(r4)
                    gatewayprotocol.v1.CampaignStateOuterClass$Campaign r0 = r0._build()
                L8b:
                    com.unity3d.ads.core.data.repository.CampaignRepository r7 = r2
                    r7.setCampaign(r4, r0)
                    kotlin.Unit r7 = kotlin.Unit.f60915a
                    return r7
                L93:
                    java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
                    java.lang.String r8 = "Update campaign state requires a non-empty data byte string"
                    r7.<init>(r8)
                    throw r7
                L9b:
                    java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
                    java.lang.String r8 = "Update campaign state requires a dataVersion integer"
                    r7.<init>(r8)
                    throw r7
                La3:
                    java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
                    java.lang.String r8 = "Update campaign state requires a data string"
                    r7.<init>(r8)
                    throw r7
                Lab:
                    java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
                    java.lang.String r8 = "Update campaign state requires a JSONObject"
                    r7.<init>(r8)
                    throw r7
                */
                throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$updateCampaignState$1.invoke2(java.lang.Object[], rs.c):java.lang.Object");
            }
        };
    }

    @NotNull
    public static final ExposedFunction updateTrackingToken(@NotNull final AdObject adObject) {
        Intrinsics.checkNotNullParameter(adObject, "adObject");
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$updateTrackingToken$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<? super Unit>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<? super Unit> cVar) {
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type org.json.JSONObject");
                String token = ((JSONObject) obj).optString(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN);
                if (token != null && token.length() != 0) {
                    AdObject adObject2 = AdObject.this;
                    Intrinsics.checkNotNullExpressionValue(token, "token");
                    adObject2.setTrackingToken(ProtobufExtensionsKt.fromBase64$default(token, false, 1, null));
                }
                return Unit.f60915a;
            }
        };
    }

    @NotNull
    public static final ExposedFunction writeStorage() {
        return new ExposedFunction() { // from class: com.unity3d.ads.core.domain.exposure.CommonAdViewerExposedFunctionsKt$writeStorage$1
            @Override // com.unity3d.ads.adplayer.ExposedFunction, kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Object invoke(Object[] objArr, c<? super Object> cVar) {
                return invoke2(objArr, (c<Object>) cVar);
            }

            @Nullable
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final Object invoke2(@NotNull Object[] objArr, @NotNull c<Object> cVar) {
                f fVar = new f(a.c(cVar));
                Object obj = objArr[0];
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
                Storage.write((String) obj, new ContinuationFromCallback(fVar));
                Object a10 = fVar.a();
                if (a10 == a.f()) {
                    kotlin.coroutines.jvm.internal.f.c(cVar);
                }
                return a10;
            }
        };
    }
}
