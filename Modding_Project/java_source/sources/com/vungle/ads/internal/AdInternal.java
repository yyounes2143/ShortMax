package com.vungle.ads.internal;

import android.content.Context;
import android.content.Intent;
import com.vungle.ads.AdExpiredError;
import com.vungle.ads.AdExpiredOnPlayError;
import com.vungle.ads.AdMarkupInvalidError;
import com.vungle.ads.AdMarkupJsonError;
import com.vungle.ads.AdNotLoadedCantPlay;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.InvalidAdStateError;
import com.vungle.ads.InvalidBannerSizeError;
import com.vungle.ads.InvalidWaterfallPlacementError;
import com.vungle.ads.PlacementAdTypeMismatchError;
import com.vungle.ads.PlacementNotFoundError;
import com.vungle.ads.SdkNotInitialized;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleAdSize;
import com.vungle.ads.VungleAds;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.AdInternal;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.SDKExecutors;
import com.vungle.ads.internal.load.AdLoaderCallback;
import com.vungle.ads.internal.load.AdRequest;
import com.vungle.ads.internal.load.BaseAdLoader;
import com.vungle.ads.internal.load.DefaultAdLoader;
import com.vungle.ads.internal.load.RealtimeAdLoader;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.BidPayload;
import com.vungle.ads.internal.model.Placement;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.presenter.AdEventListener;
import com.vungle.ads.internal.presenter.AdPlayCallback;
import com.vungle.ads.internal.presenter.AdPlayCallbackWrapper;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.signals.SignalManager;
import com.vungle.ads.internal.task.CleanupJob;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.ui.AdActivity;
import com.vungle.ads.internal.util.ActivityManager;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.lang.ref.WeakReference;
import java.util.List;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.NotImplementedError;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.s;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: AdInternal.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class AdInternal implements AdLoaderCallback {
    @NotNull
    private static final String TAG = "AdInternal";
    private static final boolean THROW_ON_ILLEGAL_TRANSITION = false;
    @Nullable
    private AdLoaderCallback adLoaderCallback;
    @NotNull
    private AdState adState;
    @Nullable
    private AdPayload advertisement;
    @Nullable
    private BaseAdLoader baseAdLoader;
    @Nullable
    private BidPayload bidPayload;
    @NotNull
    private final Context context;
    @Nullable
    private TimeIntervalMetric loadMetric;
    @Nullable
    private LogEntry logEntry;
    @Nullable
    private Placement placement;
    @Nullable
    private WeakReference<Context> playContext;
    @Nullable
    private TimeIntervalMetric requestMetric;
    @NotNull
    private final TimeIntervalMetric showToValidationMetric;
    @NotNull
    private final i signalManager$delegate;
    @NotNull
    private final TimeIntervalMetric validationToPresentMetric;
    @NotNull
    private final i vungleApiClient$delegate;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final kotlinx.serialization.json.a json = s.b(null, new Function1<kotlinx.serialization.json.c, Unit>() { // from class: com.vungle.ads.internal.AdInternal$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(kotlinx.serialization.json.c cVar) {
            invoke2(cVar);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull kotlinx.serialization.json.c Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
        }
    }, 1, null);

    /* compiled from: AdInternal.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class AdState {
        public static final AdState NEW = new NEW("NEW", 0);
        public static final AdState LOADING = new LOADING("LOADING", 1);
        public static final AdState READY = new READY("READY", 2);
        public static final AdState PLAYING = new PLAYING("PLAYING", 3);
        public static final AdState FINISHED = new FINISHED("FINISHED", 4);
        public static final AdState ERROR = new ERROR("ERROR", 5);
        private static final /* synthetic */ AdState[] $VALUES = $values();

        /* compiled from: AdInternal.kt */
        @Metadata
        /* loaded from: classes7.dex */
        static final class ERROR extends AdState {
            ERROR(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(@NotNull AdState adState) {
                Intrinsics.checkNotNullParameter(adState, "adState");
                if (adState == AdState.FINISHED) {
                    return true;
                }
                return false;
            }
        }

        /* compiled from: AdInternal.kt */
        @Metadata
        /* loaded from: classes7.dex */
        static final class FINISHED extends AdState {
            FINISHED(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(@NotNull AdState adState) {
                Intrinsics.checkNotNullParameter(adState, "adState");
                return false;
            }
        }

        /* compiled from: AdInternal.kt */
        @Metadata
        /* loaded from: classes7.dex */
        static final class LOADING extends AdState {
            LOADING(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(@NotNull AdState adState) {
                Intrinsics.checkNotNullParameter(adState, "adState");
                if (adState != AdState.READY && adState != AdState.ERROR) {
                    return false;
                }
                return true;
            }
        }

        /* compiled from: AdInternal.kt */
        @Metadata
        /* loaded from: classes7.dex */
        static final class NEW extends AdState {
            NEW(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(@NotNull AdState adState) {
                Intrinsics.checkNotNullParameter(adState, "adState");
                if (adState != AdState.LOADING && adState != AdState.READY && adState != AdState.ERROR) {
                    return false;
                }
                return true;
            }
        }

        /* compiled from: AdInternal.kt */
        @Metadata
        /* loaded from: classes7.dex */
        static final class PLAYING extends AdState {
            PLAYING(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(@NotNull AdState adState) {
                Intrinsics.checkNotNullParameter(adState, "adState");
                if (adState != AdState.FINISHED && adState != AdState.ERROR) {
                    return false;
                }
                return true;
            }
        }

        /* compiled from: AdInternal.kt */
        @Metadata
        /* loaded from: classes7.dex */
        static final class READY extends AdState {
            READY(String str, int i10) {
                super(str, i10, null);
            }

            @Override // com.vungle.ads.internal.AdInternal.AdState
            public boolean canTransitionTo(@NotNull AdState adState) {
                Intrinsics.checkNotNullParameter(adState, "adState");
                if (adState != AdState.PLAYING && adState != AdState.FINISHED && adState != AdState.ERROR) {
                    return false;
                }
                return true;
            }
        }

        private static final /* synthetic */ AdState[] $values() {
            return new AdState[]{NEW, LOADING, READY, PLAYING, FINISHED, ERROR};
        }

        public /* synthetic */ AdState(String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, i10);
        }

        public static AdState valueOf(String str) {
            return (AdState) Enum.valueOf(AdState.class, str);
        }

        public static AdState[] values() {
            return (AdState[]) $VALUES.clone();
        }

        public abstract boolean canTransitionTo(@NotNull AdState adState);

        public final boolean isTerminalState() {
            return CollectionsKt.q(FINISHED, ERROR).contains(this);
        }

        @NotNull
        public final AdState transitionTo(@NotNull AdState adState) {
            Intrinsics.checkNotNullParameter(adState, "adState");
            if (this != adState && !canTransitionTo(adState)) {
                String str = "Cannot transition from " + name() + " to " + adState.name();
                if (!AdInternal.THROW_ON_ILLEGAL_TRANSITION) {
                    Logger.Companion.e(AdInternal.TAG, "Illegal state transition", new IllegalStateException(str));
                } else {
                    throw new IllegalStateException(str);
                }
            }
            return adState;
        }

        private AdState(String str, int i10) {
            super(str, i10);
        }
    }

    /* compiled from: AdInternal.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        private static /* synthetic */ void getJson$annotations() {
        }
    }

    /* compiled from: AdInternal.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AdState.values().length];
            iArr[AdState.NEW.ordinal()] = 1;
            iArr[AdState.LOADING.ordinal()] = 2;
            iArr[AdState.READY.ordinal()] = 3;
            iArr[AdState.PLAYING.ordinal()] = 4;
            iArr[AdState.FINISHED.ordinal()] = 5;
            iArr[AdState.ERROR.ordinal()] = 6;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public AdInternal(@NotNull final Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        this.adState = AdState.NEW;
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        this.vungleApiClient$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<VungleApiClient>() { // from class: com.vungle.ads.internal.AdInternal$special$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.VungleApiClient, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final VungleApiClient invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(VungleApiClient.class);
            }
        });
        this.showToValidationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS);
        this.validationToPresentMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_VALIDATION_TO_PRESENT_DURATION_MS);
        this.signalManager$delegate = kotlin.c.a(lazyThreadSafetyMode, new Function0<SignalManager>() { // from class: com.vungle.ads.internal.AdInternal$special$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.signals.SignalManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SignalManager invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(SignalManager.class);
            }
        });
    }

    /* renamed from: _set_adState_$lambda-1$lambda-0 */
    private static final JobRunner m4765_set_adState_$lambda1$lambda0(i<? extends JobRunner> iVar) {
        return iVar.getValue();
    }

    public static /* synthetic */ VungleError canPlayAd$default(AdInternal adInternal, boolean z10, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 1) != 0) {
                z10 = false;
            }
            return adInternal.canPlayAd(z10);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: canPlayAd");
    }

    private final SignalManager getSignalManager() {
        return (SignalManager) this.signalManager$delegate.getValue();
    }

    private final VungleApiClient getVungleApiClient() {
        return (VungleApiClient) this.vungleApiClient$delegate.getValue();
    }

    /* renamed from: loadAd$lambda-2 */
    private static final OMInjector m4766loadAd$lambda2(i<OMInjector> iVar) {
        return iVar.getValue();
    }

    /* renamed from: loadAd$lambda-3 */
    private static final SDKExecutors m4767loadAd$lambda3(i<SDKExecutors> iVar) {
        return iVar.getValue();
    }

    /* renamed from: loadAd$lambda-4 */
    private static final PathProvider m4768loadAd$lambda4(i<PathProvider> iVar) {
        return iVar.getValue();
    }

    /* renamed from: loadAd$lambda-5 */
    private static final Downloader m4769loadAd$lambda5(i<? extends Downloader> iVar) {
        return iVar.getValue();
    }

    /* renamed from: onSuccess$lambda-10$lambda-8 */
    private static final TpatSender m4770onSuccess$lambda10$lambda8(i<TpatSender> iVar) {
        return iVar.getValue();
    }

    public void adLoadedAndUpdateConfigure$vungle_ads_release(@NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
    }

    @Nullable
    public final VungleError canPlayAd(boolean z10) {
        VungleError adExpiredError;
        AdPayload adPayload = this.advertisement;
        if (adPayload == null) {
            adExpiredError = new AdNotLoadedCantPlay("adv is null on onPlay=" + z10);
        } else {
            AdState adState = this.adState;
            if (adState == AdState.PLAYING) {
                adExpiredError = new InvalidAdStateError(Sdk.SDKError.Reason.AD_IS_PLAYING, "Current ad is playing");
            } else if (adState != AdState.READY) {
                Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.AD_NOT_LOADED;
                adExpiredError = new InvalidAdStateError(reason, this.adState + " is not READY");
            } else if (adPayload != null && adPayload.hasExpired()) {
                if (z10) {
                    adExpiredError = new AdExpiredOnPlayError();
                } else {
                    adExpiredError = new AdExpiredError("adv has expired on canPlayAd()");
                }
            } else {
                return null;
            }
        }
        if (z10) {
            adExpiredError.setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
        }
        return adExpiredError;
    }

    public final void cancelDownload$vungle_ads_release() {
        BaseAdLoader baseAdLoader = this.baseAdLoader;
        if (baseAdLoader != null) {
            baseAdLoader.cancel();
        }
    }

    @Nullable
    public abstract VungleAdSize getAdSizeForAdRequest();

    @NotNull
    public final AdState getAdState() {
        return this.adState;
    }

    @Nullable
    public final AdPayload getAdvertisement() {
        return this.advertisement;
    }

    @Nullable
    public final BidPayload getBidPayload() {
        return this.bidPayload;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final LogEntry getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    @Nullable
    public final Placement getPlacement() {
        return this.placement;
    }

    @NotNull
    public final TimeIntervalMetric getShowToValidationMetric$vungle_ads_release() {
        return this.showToValidationMetric;
    }

    @NotNull
    public final TimeIntervalMetric getValidationToPresentMetric$vungle_ads_release() {
        return this.validationToPresentMetric;
    }

    public final boolean isErrorTerminal$vungle_ads_release(int i10) {
        if (this.adState == AdState.READY && i10 == 304) {
            return true;
        }
        return false;
    }

    public abstract boolean isValidAdSize(@Nullable VungleAdSize vungleAdSize);

    public abstract boolean isValidAdTypeForPlacement(@NotNull Placement placement);

    public final void loadAd(@NotNull String placementId, @Nullable String str, @NotNull AdLoaderCallback adLoaderCallback) {
        Sdk.SDKError.Reason reason;
        Intrinsics.checkNotNullParameter(placementId, "placementId");
        Intrinsics.checkNotNullParameter(adLoaderCallback, "adLoaderCallback");
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.LOAD_AD_API, 0L, this.logEntry, null, 10, null);
        TimeIntervalMetric timeIntervalMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_LOAD_TO_CALLBACK_ADO_DURATION_MS);
        this.loadMetric = timeIntervalMetric;
        timeIntervalMetric.markStart();
        this.adLoaderCallback = adLoaderCallback;
        if (!VungleAds.Companion.isInitialized()) {
            adLoaderCallback.onFailure(new SdkNotInitialized("SDK not initialized").setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        ConfigManager configManager = ConfigManager.INSTANCE;
        Placement placement = configManager.getPlacement(placementId);
        if (placement != null) {
            this.placement = placement;
            if (!isValidAdTypeForPlacement(placement)) {
                adLoaderCallback.onFailure(new PlacementAdTypeMismatchError(placement.getReferenceId()).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            } else if ((placement.getHeaderBidding() && (str == null || str.length() == 0)) || (!placement.getHeaderBidding() && str != null && str.length() != 0)) {
                adLoaderCallback.onFailure(new InvalidWaterfallPlacementError(placementId).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            }
        } else if (configManager.configLastValidatedTimestamp() == -1) {
            Placement placement2 = new Placement(placementId, false, (String) null, 6, (DefaultConstructorMarker) null);
            this.placement = placement2;
            placement = placement2;
        } else {
            adLoaderCallback.onFailure(new PlacementNotFoundError(placementId).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        VungleAdSize adSizeForAdRequest = getAdSizeForAdRequest();
        String str2 = null;
        if (!isValidAdSize(adSizeForAdRequest)) {
            if (adSizeForAdRequest != null) {
                str2 = adSizeForAdRequest.toString();
            }
            adLoaderCallback.onFailure(new InvalidBannerSizeError(str2).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        AdState adState = this.adState;
        if (adState != AdState.NEW) {
            switch (WhenMappings.$EnumSwitchMapping$0[adState.ordinal()]) {
                case 1:
                    throw new NotImplementedError(null, 1, null);
                case 2:
                    reason = Sdk.SDKError.Reason.AD_IS_LOADING;
                    break;
                case 3:
                    reason = Sdk.SDKError.Reason.AD_ALREADY_LOADED;
                    break;
                case 4:
                    reason = Sdk.SDKError.Reason.AD_IS_PLAYING;
                    break;
                case 5:
                    reason = Sdk.SDKError.Reason.AD_CONSUMED;
                    break;
                case 6:
                    reason = Sdk.SDKError.Reason.AD_ALREADY_FAILED;
                    break;
                default:
                    throw new NoWhenBranchMatchedException();
            }
            adLoaderCallback.onFailure(new InvalidAdStateError(reason, this.adState + " state is incorrect for load").setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        TimeIntervalMetric timeIntervalMetric2 = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_CALLBACK_ADO_DURATION_MS);
        this.requestMetric = timeIntervalMetric2;
        timeIntervalMetric2.markStart();
        if (str != null && str.length() != 0) {
            try {
                kotlinx.serialization.json.a aVar = json;
                KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(BidPayload.class));
                Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
                this.bidPayload = (BidPayload) aVar.b(c10, str);
            } catch (IllegalArgumentException e10) {
                adLoaderCallback.onFailure(new AdMarkupInvalidError("Unable to decode payload into BidPayload object. Error: " + e10.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            } catch (Throwable th2) {
                adLoaderCallback.onFailure(new AdMarkupJsonError(th2.getLocalizedMessage()).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            }
        }
        setAdState(AdState.LOADING);
        ServiceLocator.Companion companion = ServiceLocator.Companion;
        final Context context = this.context;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        i a10 = kotlin.c.a(lazyThreadSafetyMode, new Function0<OMInjector>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.omsdk.OMInjector] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OMInjector invoke() {
                return ServiceLocator.Companion.getInstance(context).getService(OMInjector.class);
            }
        });
        final Context context2 = this.context;
        i a11 = kotlin.c.a(lazyThreadSafetyMode, new Function0<SDKExecutors>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.executor.SDKExecutors, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final SDKExecutors invoke() {
                return ServiceLocator.Companion.getInstance(context2).getService(SDKExecutors.class);
            }
        });
        final Context context3 = this.context;
        i a12 = kotlin.c.a(lazyThreadSafetyMode, new Function0<PathProvider>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.util.PathProvider] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final PathProvider invoke() {
                return ServiceLocator.Companion.getInstance(context3).getService(PathProvider.class);
            }
        });
        final Context context4 = this.context;
        i a13 = kotlin.c.a(lazyThreadSafetyMode, new Function0<Downloader>() { // from class: com.vungle.ads.internal.AdInternal$loadAd$$inlined$inject$4
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.downloader.Downloader, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final Downloader invoke() {
                return ServiceLocator.Companion.getInstance(context4).getService(Downloader.class);
            }
        });
        if (str != null && str.length() != 0) {
            this.baseAdLoader = new RealtimeAdLoader(this.context, getVungleApiClient(), m4767loadAd$lambda3(a11), m4766loadAd$lambda2(a10), m4769loadAd$lambda5(a13), m4768loadAd$lambda4(a12), new AdRequest(placement, this.bidPayload, adSizeForAdRequest));
        } else {
            this.baseAdLoader = new DefaultAdLoader(this.context, getVungleApiClient(), m4767loadAd$lambda3(a11), m4766loadAd$lambda2(a10), m4769loadAd$lambda5(a13), m4768loadAd$lambda4(a12), new AdRequest(placement, null, adSizeForAdRequest));
        }
        BaseAdLoader baseAdLoader = this.baseAdLoader;
        if (baseAdLoader != null) {
            baseAdLoader.setLogEntry$vungle_ads_release(this.logEntry);
        }
        BaseAdLoader baseAdLoader2 = this.baseAdLoader;
        if (baseAdLoader2 != null) {
            baseAdLoader2.loadAd(this);
        }
    }

    @Override // com.vungle.ads.internal.load.AdLoaderCallback
    public void onFailure(@NotNull VungleError error) {
        Intrinsics.checkNotNullParameter(error, "error");
        setAdState(AdState.ERROR);
        TimeIntervalMetric timeIntervalMetric = this.loadMetric;
        if (timeIntervalMetric != null) {
            timeIntervalMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.AD_LOAD_TO_FAIL_CALLBACK_DURATION_MS);
            timeIntervalMetric.markEnd();
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(timeIntervalMetric, this.logEntry, String.valueOf(error.getCode()));
        }
        AdLoaderCallback adLoaderCallback = this.adLoaderCallback;
        if (adLoaderCallback != null) {
            adLoaderCallback.onFailure(error);
        }
    }

    @Override // com.vungle.ads.internal.load.AdLoaderCallback
    public void onSuccess(@NotNull AdPayload advertisement) {
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        this.advertisement = advertisement;
        setAdState(AdState.READY);
        adLoadedAndUpdateConfigure$vungle_ads_release(advertisement);
        AdLoaderCallback adLoaderCallback = this.adLoaderCallback;
        if (adLoaderCallback != null) {
            adLoaderCallback.onSuccess(advertisement);
        }
        TimeIntervalMetric timeIntervalMetric = this.loadMetric;
        if (timeIntervalMetric != null) {
            if (!advertisement.adLoadOptimizationEnabled()) {
                timeIntervalMetric.setMetricType(Sdk.SDKMetric.SDKMetricType.AD_LOAD_TO_CALLBACK_DURATION_MS);
            }
            timeIntervalMetric.markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, timeIntervalMetric, this.logEntry, (String) null, 4, (Object) null);
        }
        TimeIntervalMetric timeIntervalMetric2 = this.requestMetric;
        if (timeIntervalMetric2 != null) {
            if (!advertisement.adLoadOptimizationEnabled()) {
                timeIntervalMetric2.setMetricType(Sdk.SDKMetric.SDKMetricType.AD_REQUEST_TO_CALLBACK_DURATION_MS);
            }
            timeIntervalMetric2.markEnd();
            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, timeIntervalMetric2, this.logEntry, (String) null, 4, (Object) null);
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.AdInternal$onSuccess$lambda-10$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.ads.internal.network.TpatSender, java.lang.Object] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final TpatSender invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(TpatSender.class);
                }
            });
            List<String> tpatUrls$default = AdPayload.getTpatUrls$default(advertisement, Constants.AD_LOAD_DURATION, String.valueOf(timeIntervalMetric2.getValue()), null, 4, null);
            if (tpatUrls$default != null) {
                for (String str : tpatUrls$default) {
                    TpatSender.sendTpat$default(m4770onSuccess$lambda10$lambda8(a10), new TpatRequest.Builder(str).tpatKey(Constants.AD_LOAD_DURATION).withLogEntry(this.logEntry).build(), false, 2, null);
                }
            }
        }
    }

    public final void play(@Nullable Context context, @NotNull AdPlayCallback adPlayCallback) {
        WeakReference<Context> weakReference;
        Intrinsics.checkNotNullParameter(adPlayCallback, "adPlayCallback");
        this.showToValidationMetric.markStart();
        if (context != null) {
            weakReference = new WeakReference<>(context);
        } else {
            weakReference = null;
        }
        this.playContext = weakReference;
        VungleError canPlayAd = canPlayAd(true);
        if (canPlayAd != null) {
            adPlayCallback.onFailure(canPlayAd);
            if (isErrorTerminal$vungle_ads_release(canPlayAd.getCode())) {
                setAdState(AdState.ERROR);
                return;
            }
            return;
        }
        AdPayload adPayload = this.advertisement;
        if (adPayload == null) {
            return;
        }
        AdPlayCallbackWrapper adPlayCallbackWrapper = new AdPlayCallbackWrapper(adPlayCallback) { // from class: com.vungle.ads.internal.AdInternal$play$callbackWrapper$1
            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdEnd(@Nullable String str) {
                this.setAdState(AdInternal.AdState.FINISHED);
                super.onAdEnd(str);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onAdStart(@Nullable String str) {
                this.setAdState(AdInternal.AdState.PLAYING);
                this.getValidationToPresentMetric$vungle_ads_release().markEnd();
                AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.getValidationToPresentMetric$vungle_ads_release(), this.getLogEntry$vungle_ads_release(), (String) null, 4, (Object) null);
                super.onAdStart(str);
            }

            @Override // com.vungle.ads.internal.presenter.AdPlayCallbackWrapper, com.vungle.ads.internal.presenter.AdPlayCallback
            public void onFailure(@NotNull VungleError error) {
                Intrinsics.checkNotNullParameter(error, "error");
                this.setAdState(AdInternal.AdState.ERROR);
                super.onFailure(error);
            }
        };
        cancelDownload$vungle_ads_release();
        renderAd$vungle_ads_release(adPlayCallbackWrapper, adPayload);
    }

    public void renderAd$vungle_ads_release(@Nullable AdPlayCallback adPlayCallback, @NotNull AdPayload advertisement) {
        Context context;
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        AdActivity.Companion companion = AdActivity.Companion;
        companion.setEventListener$vungle_ads_release(new AdEventListener(adPlayCallback, this.placement) { // from class: com.vungle.ads.internal.AdInternal$renderAd$1
        });
        companion.setAdvertisement$vungle_ads_release(advertisement);
        companion.setBidPayload$vungle_ads_release(this.bidPayload);
        WeakReference<Context> weakReference = this.playContext;
        if (weakReference == null || (context = weakReference.get()) == null) {
            context = this.context;
        }
        Intrinsics.checkNotNullExpressionValue(context, "playContext?.get() ?: context");
        Placement placement = this.placement;
        if (placement == null) {
            return;
        }
        Intent createIntent = companion.createIntent(context, placement.getReferenceId(), advertisement.eventId());
        ActivityManager.Companion companion2 = ActivityManager.Companion;
        if (!companion2.isForeground()) {
            Logger.Companion.d(TAG, "The ad activity is in background on play.");
            createIntent.putExtra(AdActivity.AD_INVISIBLE_LOGGED_KEY, true);
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.AD_VISIBILITY), this.logEntry, "1");
        }
        this.showToValidationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.showToValidationMetric, this.logEntry, (String) null, 4, (Object) null);
        this.validationToPresentMetric.markStart();
        companion2.startWhenForeground(context, null, createIntent, null);
    }

    public final void setAdState(@NotNull AdState value) {
        AdPayload adPayload;
        String eventId;
        Intrinsics.checkNotNullParameter(value, "value");
        if (value.isTerminalState() && (adPayload = this.advertisement) != null && (eventId = adPayload.eventId()) != null) {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            m4765_set_adState_$lambda1$lambda0(kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<JobRunner>() { // from class: com.vungle.ads.internal.AdInternal$_set_adState_$lambda-1$$inlined$inject$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.vungle.ads.internal.task.JobRunner] */
                @Override // kotlin.jvm.functions.Function0
                @NotNull
                public final JobRunner invoke() {
                    return ServiceLocator.Companion.getInstance(context).getService(JobRunner.class);
                }
            })).execute(CleanupJob.Companion.makeJobInfo(eventId));
        }
        this.adState = this.adState.transitionTo(value);
    }

    public final void setAdvertisement(@Nullable AdPayload adPayload) {
        this.advertisement = adPayload;
    }

    public final void setBidPayload(@Nullable BidPayload bidPayload) {
        this.bidPayload = bidPayload;
    }

    public final void setLogEntry$vungle_ads_release(@Nullable LogEntry logEntry) {
        this.logEntry = logEntry;
    }

    public final void setPlacement(@Nullable Placement placement) {
        this.placement = placement;
    }
}
