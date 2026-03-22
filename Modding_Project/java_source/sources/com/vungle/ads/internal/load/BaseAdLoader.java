package com.vungle.ads.internal.load;

import android.content.Context;
import androidx.annotation.WorkerThread;
import com.vungle.ads.AdExpiredError;
import com.vungle.ads.AdPayloadError;
import com.vungle.ads.AdResponseEmptyError;
import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.AssetDownloadError;
import com.vungle.ads.AssetRequestError;
import com.vungle.ads.AssetResponseDataError;
import com.vungle.ads.IndexHtmlError;
import com.vungle.ads.InvalidAssetUrlError;
import com.vungle.ads.InvalidEventIdError;
import com.vungle.ads.InvalidTemplateURLError;
import com.vungle.ads.MraidJsError;
import com.vungle.ads.NativeAssetError;
import com.vungle.ads.OmSdkJsError;
import com.vungle.ads.ServiceLocator;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.TemplateUnzipError;
import com.vungle.ads.TimeIntervalMetric;
import com.vungle.ads.VungleError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.NativeAdInternal;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.Executors;
import com.vungle.ads.internal.load.MraidJsLoader;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.TpatRequest;
import com.vungle.ads.internal.network.TpatSender;
import com.vungle.ads.internal.network.VungleApiClient;
import com.vungle.ads.internal.omsdk.OMInjector;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.task.JobRunner;
import com.vungle.ads.internal.task.ResendTpatJob;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import com.vungle.ads.internal.util.UnzipUtility;
import com.vungle.ads.internal.util.Utils;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseAdLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public abstract class BaseAdLoader {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String DOWNLOADED_FILE_NOT_FOUND = "Downloaded file not found!";
    @NotNull
    private static final String TAG = "BaseAdLoader";
    @NotNull
    private final List<AdAsset> adAssets;
    @Nullable
    private AdLoaderCallback adLoaderCallback;
    @NotNull
    private TimeIntervalMetric adOptionalDownloadDurationMetric;
    @NotNull
    private final AdRequest adRequest;
    @NotNull
    private TimeIntervalMetric adRequiredDownloadDurationMetric;
    @Nullable
    private AdPayload advertisement;
    @NotNull
    private TimeIntervalMetric assetDownloadDurationMetric;
    @NotNull
    private final Context context;
    @NotNull
    private final AtomicLong downloadCount;
    @NotNull
    private final AtomicLong downloadRequiredCount;
    @NotNull
    private final Downloader downloader;
    @NotNull
    private AtomicBoolean fullyDownloaded;
    @Nullable
    private LogEntry logEntry;
    @NotNull
    private SingleValueMetric mainVideoSizeMetric;
    @NotNull
    private AtomicBoolean notifyFailed;
    @NotNull
    private AtomicBoolean notifySuccess;
    @NotNull
    private final OMInjector omInjector;
    @NotNull
    private final PathProvider pathProvider;
    @NotNull
    private AtomicBoolean requiredAssetDownloaded;
    @NotNull
    private final Executors sdkExecutors;
    @NotNull
    private SingleValueMetric templateHtmlSizeMetric;
    @NotNull
    private SingleValueMetric templateSizeMetric;
    @NotNull
    private final VungleApiClient vungleApiClient;

    /* compiled from: BaseAdLoader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public BaseAdLoader(@NotNull Context context, @NotNull VungleApiClient vungleApiClient, @NotNull Executors sdkExecutors, @NotNull OMInjector omInjector, @NotNull Downloader downloader, @NotNull PathProvider pathProvider, @NotNull AdRequest adRequest) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(vungleApiClient, "vungleApiClient");
        Intrinsics.checkNotNullParameter(sdkExecutors, "sdkExecutors");
        Intrinsics.checkNotNullParameter(omInjector, "omInjector");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(adRequest, "adRequest");
        this.context = context;
        this.vungleApiClient = vungleApiClient;
        this.sdkExecutors = sdkExecutors;
        this.omInjector = omInjector;
        this.downloader = downloader;
        this.pathProvider = pathProvider;
        this.adRequest = adRequest;
        this.downloadCount = new AtomicLong(0L);
        this.downloadRequiredCount = new AtomicLong(0L);
        this.notifySuccess = new AtomicBoolean(false);
        this.notifyFailed = new AtomicBoolean(false);
        this.adAssets = new ArrayList();
        this.fullyDownloaded = new AtomicBoolean(true);
        this.requiredAssetDownloaded = new AtomicBoolean(true);
        this.mainVideoSizeMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.ASSET_FILE_SIZE);
        this.templateSizeMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.TEMPLATE_ZIP_SIZE);
        this.templateHtmlSizeMetric = new SingleValueMetric(Sdk.SDKMetric.SDKMetricType.TEMPLATE_HTML_SIZE);
        this.assetDownloadDurationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.ASSET_DOWNLOAD_DURATION_MS);
        this.adRequiredDownloadDurationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_REQUIRED_DOWNLOAD_DURATION_MS);
        this.adOptionalDownloadDurationMetric = new TimeIntervalMetric(Sdk.SDKMetric.SDKMetricType.AD_OPTIONAL_DOWNLOAD_DURATION_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void downloadAssets() {
        this.assetDownloadDurationMetric.markStart();
        this.adRequiredDownloadDurationMetric.markStart();
        this.adOptionalDownloadDurationMetric.markStart();
        this.downloadCount.set(this.adAssets.size());
        AtomicLong atomicLong = this.downloadRequiredCount;
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.adAssets) {
            if (((AdAsset) obj).isRequired()) {
                arrayList.add(obj);
            }
        }
        atomicLong.set(arrayList.size());
        for (AdAsset adAsset : this.adAssets) {
            DownloadRequest downloadRequest = new DownloadRequest(getAssetPriority(adAsset), adAsset, this.logEntry);
            if (downloadRequest.isTemplate()) {
                downloadRequest.startRecord();
            }
            this.downloader.download(downloadRequest, getAssetDownloadListener());
        }
    }

    private final boolean fileIsValid(File file, AdAsset adAsset) {
        if (file.exists() && file.length() == adAsset.getFileSize()) {
            return true;
        }
        return false;
    }

    private final AssetDownloadListener getAssetDownloadListener() {
        return new BaseAdLoader$assetDownloadListener$1(this);
    }

    private final DownloadRequest.Priority getAssetPriority(AdAsset adAsset) {
        if (adAsset.isRequired()) {
            return DownloadRequest.Priority.CRITICAL;
        }
        return DownloadRequest.Priority.HIGHEST;
    }

    private final File getDestinationDir(AdPayload adPayload) {
        return this.pathProvider.getDownloadsDirForAd(adPayload.eventId());
    }

    private final VungleError getErrorInfo(AdPayload adPayload) {
        Integer num;
        Integer num2;
        AdPayload.AdUnit adUnit = adPayload.adUnit();
        String str = null;
        if (adUnit != null) {
            num = adUnit.getErrorCode();
        } else {
            num = null;
        }
        AdPayload.AdUnit adUnit2 = adPayload.adUnit();
        if (adUnit2 != null) {
            num2 = adUnit2.getSleep();
        } else {
            num2 = null;
        }
        AdPayload.AdUnit adUnit3 = adPayload.adUnit();
        if (adUnit3 != null) {
            str = adUnit3.getInfo();
        }
        String str2 = "Response error: " + num2 + ", Request failed with error: " + num + ", " + str;
        if ((num != null && num.intValue() == 10001) || ((num != null && num.intValue() == 10002) || ((num != null && num.intValue() == 20001) || ((num != null && num.intValue() == 30001) || (num != null && num.intValue() == 30002))))) {
            Sdk.SDKError.Reason forNumber = Sdk.SDKError.Reason.forNumber(num.intValue());
            Intrinsics.checkNotNullExpressionValue(forNumber, "forNumber(errorCode)");
            return new AdPayloadError(forNumber, str2);
        }
        return new AdPayloadError(Sdk.SDKError.Reason.PLACEMENT_SLEEP, str2);
    }

    private final VungleError getTemplateError(AdPayload adPayload) {
        AdPayload.TemplateSettings templateSettings;
        String str;
        String str2;
        String str3;
        String str4;
        AdPayload.AdUnit adUnit = adPayload.adUnit();
        if (adUnit != null) {
            templateSettings = adUnit.getTemplateSettings();
        } else {
            templateSettings = null;
        }
        if (templateSettings == null) {
            return new AssetResponseDataError("Missing template settings");
        }
        Map<String, AdPayload.CacheableReplacement> cacheableReplacements = templateSettings.getCacheableReplacements();
        if (adPayload.isNativeTemplateType()) {
            if (cacheableReplacements != null) {
                AdPayload.CacheableReplacement cacheableReplacement = cacheableReplacements.get(NativeAdInternal.TOKEN_MAIN_IMAGE);
                if (cacheableReplacement != null) {
                    str3 = cacheableReplacement.getUrl();
                } else {
                    str3 = null;
                }
                if (str3 == null) {
                    return new NativeAssetError("Unable to load null main image.");
                }
                AdPayload.CacheableReplacement cacheableReplacement2 = cacheableReplacements.get(NativeAdInternal.TOKEN_VUNGLE_PRIVACY_ICON_URL);
                if (cacheableReplacement2 != null) {
                    str4 = cacheableReplacement2.getUrl();
                } else {
                    str4 = null;
                }
                if (str4 == null) {
                    return new NativeAssetError("Unable to load null privacy image.");
                }
            }
        } else {
            AdPayload.AdUnit adUnit2 = adPayload.adUnit();
            if (adUnit2 != null) {
                str = adUnit2.getTemplateURL();
            } else {
                str = null;
            }
            AdPayload.AdUnit adUnit3 = adPayload.adUnit();
            if (adUnit3 != null) {
                str2 = adUnit3.getVmURL();
            } else {
                str2 = null;
            }
            if ((str != null && str.length() != 0) || (str2 != null && str2.length() != 0)) {
                if (str != null && str.length() != 0 && !Utils.INSTANCE.isUrlValid(str)) {
                    return new AssetRequestError("Failed to load template: " + str);
                } else if (str2 != null && str2.length() != 0 && !Utils.INSTANCE.isUrlValid(str2)) {
                    return new AssetRequestError("Failed to load vm url: " + str2);
                }
            } else {
                return new InvalidTemplateURLError("Failed to prepare null vmURL or templateURL for downloading.");
            }
        }
        if (cacheableReplacements != null) {
            for (Map.Entry<String, AdPayload.CacheableReplacement> entry : cacheableReplacements.entrySet()) {
                String url = entry.getValue().getUrl();
                if (url != null && url.length() != 0) {
                    if (!Utils.INSTANCE.isUrlValid(url)) {
                        return new AssetRequestError("Invalid asset URL " + url);
                    }
                } else {
                    return new InvalidAssetUrlError("Invalid asset URL " + url);
                }
            }
        }
        return null;
    }

    /* renamed from: handleAdMetaData$lambda-6  reason: not valid java name */
    private static final TpatSender m4801handleAdMetaData$lambda6(i<TpatSender> iVar) {
        return iVar.getValue();
    }

    public static /* synthetic */ void handleAdMetaData$vungle_ads_release$default(BaseAdLoader baseAdLoader, AdPayload adPayload, SingleValueMetric singleValueMetric, int i10, Object obj) {
        if (obj == null) {
            if ((i10 & 2) != 0) {
                singleValueMetric = null;
            }
            baseAdLoader.handleAdMetaData$vungle_ads_release(adPayload, singleValueMetric);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: handleAdMetaData");
    }

    private final boolean injectMraidJS(File file) {
        try {
            File file2 = new File(file.getPath(), Constants.AD_MRAID_JS_FILE_NAME);
            File file3 = new File(this.pathProvider.getJsAssetDir(ConfigManager.INSTANCE.getMraidJsVersion()), Constants.MRAID_JS_FILE_NAME);
            if (file3.exists()) {
                ws.f.v(file3, file2, true, 0, 4, null);
                return true;
            }
            new MraidJsError(Sdk.SDKError.Reason.MRAID_JS_DOES_NOT_EXIST, "mraid js source file not exist.").setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        } catch (Exception e10) {
            Logger.Companion companion = Logger.Companion;
            companion.e(TAG, "Failed to inject mraid.js: " + e10.getMessage());
            Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.MRAID_JS_COPY_FAILED;
            new MraidJsError(reason, "Failed to copy mraid js to ad folder: " + e10.getMessage()).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: loadAd$lambda-0  reason: not valid java name */
    public static final void m4802loadAd$lambda0(BaseAdLoader this$0) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.requestAd();
    }

    private final void onAdReady() {
        AdPayload adPayload = this.advertisement;
        if (adPayload != null && !this.notifyFailed.get() && this.notifySuccess.compareAndSet(false, true)) {
            onAdLoadReady();
            AdLoaderCallback adLoaderCallback = this.adLoaderCallback;
            if (adLoaderCallback != null) {
                adLoaderCallback.onSuccess(adPayload);
            }
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            m4803onAdReady$lambda3$lambda2(kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<JobRunner>() { // from class: com.vungle.ads.internal.load.BaseAdLoader$onAdReady$lambda-3$$inlined$inject$1
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
            })).execute(ResendTpatJob.Companion.makeJobInfo());
        }
    }

    /* renamed from: onAdReady$lambda-3$lambda-2  reason: not valid java name */
    private static final JobRunner m4803onAdReady$lambda3$lambda2(i<? extends JobRunner> iVar) {
        return iVar.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void onDownloadCompleted(AdRequest adRequest) {
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "All download completed " + adRequest);
        AdPayload adPayload = this.advertisement;
        if (adPayload != null) {
            adPayload.setAssetFullyDownloaded();
        }
        onAdReady();
        this.assetDownloadDurationMetric.markEnd();
        AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.assetDownloadDurationMetric, this.logEntry, (String) null, 4, (Object) null);
        this.adOptionalDownloadDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(analyticsClient, this.adOptionalDownloadDurationMetric, this.logEntry, (String) null, 4, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void onRequiredDownloadCompleted() {
        this.adRequiredDownloadDurationMetric.markEnd();
        AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, this.adRequiredDownloadDurationMetric, this.logEntry, (String) null, 4, (Object) null);
        onAdReady();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean processVmTemplate(AdAsset adAsset, AdPayload adPayload) {
        if (adPayload == null || adAsset.getStatus() != AdAsset.Status.DOWNLOAD_SUCCESS || adAsset.getLocalPath().length() == 0) {
            return false;
        }
        File file = new File(adAsset.getLocalPath());
        if (!fileIsValid(file, adAsset)) {
            return false;
        }
        File destinationDir = getDestinationDir(adPayload);
        if (destinationDir != null && destinationDir.isDirectory()) {
            if (adAsset.getFileType() == AdAsset.FileType.ZIP && !unzipFile(file, destinationDir)) {
                return false;
            }
            if (adPayload.omEnabled()) {
                try {
                    this.omInjector.init();
                    this.omInjector.injectJsFiles$vungle_ads_release(destinationDir);
                } catch (Exception e10) {
                    Logger.Companion companion = Logger.Companion;
                    companion.e(TAG, "Failed to inject OMSDK: " + e10.getMessage());
                    Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.OMSDK_JS_WRITE_FAILED;
                    new OmSdkJsError(reason, "Failed to inject OMSDK: " + e10.getMessage()).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
                }
            }
            boolean injectMraidJS = injectMraidJS(destinationDir);
            FileUtility.printDirectoryTree(destinationDir);
            return injectMraidJS;
        }
        Logger.Companion.e(TAG, "Unable to access Destination Directory");
        return false;
    }

    private final boolean unzipFile(File file, File file2) {
        final ArrayList arrayList = new ArrayList();
        for (AdAsset adAsset : this.adAssets) {
            if (adAsset.getFileType() == AdAsset.FileType.ASSET) {
                arrayList.add(adAsset.getLocalPath());
            }
        }
        try {
            UnzipUtility unzipUtility = UnzipUtility.INSTANCE;
            String path = file.getPath();
            String path2 = file2.getPath();
            Intrinsics.checkNotNullExpressionValue(path2, "destinationDir.path");
            unzipUtility.unzip(path, path2, new UnzipUtility.Filter() { // from class: com.vungle.ads.internal.load.BaseAdLoader$unzipFile$1
                @Override // com.vungle.ads.internal.util.UnzipUtility.Filter
                public boolean matches(@Nullable String str) {
                    if (str != null && str.length() != 0) {
                        File file3 = new File(str);
                        for (String str2 : arrayList) {
                            File file4 = new File(str2);
                            if (Intrinsics.areEqual(file4, file3)) {
                                return false;
                            }
                            String path3 = file3.getPath();
                            Intrinsics.checkNotNullExpressionValue(path3, "toExtract.path");
                            if (StringsKt.V(path3, file4.getPath() + File.separator, false, 2, null)) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            });
            if (!new File(file2.getPath(), Constants.AD_INDEX_FILE_NAME).exists()) {
                new IndexHtmlError(Sdk.SDKError.Reason.INVALID_INDEX_URL, "Failed to retrieve indexFileUrl from the Ad").setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
                return false;
            }
            FileUtility.delete(file);
            return true;
        } catch (Exception e10) {
            new TemplateUnzipError("Unzip failed: " + e10.getMessage()).setLogEntry$vungle_ads_release(this.logEntry).logErrorNoReturnValue$vungle_ads_release();
            return false;
        }
    }

    private final VungleError validateAdMetadata(AdPayload adPayload) {
        String str;
        AdPayload.AdUnit adUnit = adPayload.adUnit();
        if (adUnit != null && adUnit.getSleep() != null) {
            return getErrorInfo(adPayload);
        }
        String referenceId = this.adRequest.getPlacement().getReferenceId();
        AdPayload adPayload2 = this.advertisement;
        String str2 = null;
        if (adPayload2 != null) {
            str = adPayload2.placementId();
        } else {
            str = null;
        }
        if (!Intrinsics.areEqual(referenceId, str)) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("Requests and responses don't match ");
            AdPayload adPayload3 = this.advertisement;
            if (adPayload3 != null) {
                str2 = adPayload3.placementId();
            }
            sb2.append(str2);
            sb2.append('.');
            return new AdResponseEmptyError(sb2.toString());
        }
        VungleError templateError = getTemplateError(adPayload);
        if (templateError != null) {
            return templateError;
        }
        if (adPayload.hasExpired()) {
            return new AdExpiredError("The ad markup has expired for playback.");
        }
        String eventId = adPayload.eventId();
        if (eventId != null && eventId.length() != 0) {
            return null;
        }
        return new InvalidEventIdError("Event id is invalid.");
    }

    public final void cancel() {
        this.downloader.cancelAll();
    }

    @NotNull
    public final AdRequest getAdRequest() {
        return this.adRequest;
    }

    @Nullable
    public final AdPayload getAdvertisement$vungle_ads_release() {
        return this.advertisement;
    }

    @NotNull
    public final Context getContext() {
        return this.context;
    }

    @Nullable
    public final LogEntry getLogEntry$vungle_ads_release() {
        return this.logEntry;
    }

    @NotNull
    public final PathProvider getPathProvider() {
        return this.pathProvider;
    }

    @NotNull
    public final Executors getSdkExecutors() {
        return this.sdkExecutors;
    }

    @NotNull
    public final VungleApiClient getVungleApiClient() {
        return this.vungleApiClient;
    }

    public final void handleAdMetaData$vungle_ads_release(@NotNull AdPayload advertisement, @Nullable SingleValueMetric singleValueMetric) {
        List<String> loadAdUrls;
        Intrinsics.checkNotNullParameter(advertisement, "advertisement");
        this.advertisement = advertisement;
        advertisement.setLogEntry$vungle_ads_release(this.logEntry);
        LogEntry logEntry = this.logEntry;
        if (logEntry != null) {
            logEntry.setEventId$vungle_ads_release(advertisement.eventId());
        }
        LogEntry logEntry2 = this.logEntry;
        if (logEntry2 != null) {
            logEntry2.setCreativeId$vungle_ads_release(advertisement.getCreativeId());
        }
        LogEntry logEntry3 = this.logEntry;
        if (logEntry3 != null) {
            logEntry3.setAdSource$vungle_ads_release(advertisement.getAdSource());
        }
        LogEntry logEntry4 = this.logEntry;
        if (logEntry4 != null) {
            logEntry4.setMediationName$vungle_ads_release(advertisement.getMediationName());
        }
        LogEntry logEntry5 = this.logEntry;
        if (logEntry5 != null) {
            logEntry5.setVmVersion$vungle_ads_release(advertisement.getViewMasterVersion());
        }
        ConfigPayload config = advertisement.config();
        if (config != null) {
            ConfigManager.INSTANCE.initWithConfig$vungle_ads_release(this.context, config, false, singleValueMetric);
        }
        VungleError validateAdMetadata = validateAdMetadata(advertisement);
        if (validateAdMetadata != null) {
            onAdLoadFailed(validateAdMetadata.setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
            return;
        }
        File destinationDir = getDestinationDir(advertisement);
        if (destinationDir != null && destinationDir.isDirectory() && destinationDir.exists()) {
            ServiceLocator.Companion companion = ServiceLocator.Companion;
            final Context context = this.context;
            i a10 = kotlin.c.a(LazyThreadSafetyMode.SYNCHRONIZED, new Function0<TpatSender>() { // from class: com.vungle.ads.internal.load.BaseAdLoader$handleAdMetaData$$inlined$inject$1
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
            AdPayload.AdUnit adUnit = advertisement.adUnit();
            if (adUnit != null && (loadAdUrls = adUnit.getLoadAdUrls()) != null) {
                for (String str : loadAdUrls) {
                    TpatSender.sendTpat$default(m4801handleAdMetaData$lambda6(a10), new TpatRequest.Builder(str).tpatKey(Constants.LOAD_AD).withLogEntry(this.logEntry).build(), false, 2, null);
                }
            }
            if (!this.adAssets.isEmpty()) {
                this.adAssets.clear();
            }
            this.adAssets.addAll(advertisement.getDownloadableAssets(destinationDir));
            if (this.adAssets.isEmpty()) {
                onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.INVALID_ASSET_URL, "No assets to download.").setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
                return;
            } else {
                MraidJsLoader.INSTANCE.downloadJs(this.pathProvider, this.downloader, this.sdkExecutors.getBackgroundExecutor(), new MraidJsLoader.DownloadResultListener() { // from class: com.vungle.ads.internal.load.BaseAdLoader$handleAdMetaData$3
                    @Override // com.vungle.ads.internal.load.MraidJsLoader.DownloadResultListener
                    public void onDownloadResult(int i10) {
                        AdLoaderCallback adLoaderCallback;
                        if (i10 != 10 && i10 != 13) {
                            adLoaderCallback = BaseAdLoader.this.adLoaderCallback;
                            if (adLoaderCallback != null) {
                                adLoaderCallback.onFailure(new MraidJsError(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "Failed to download mraid.js."));
                                return;
                            }
                            return;
                        }
                        if (i10 == 10) {
                            AnalyticsClient.logMetric$vungle_ads_release$default(AnalyticsClient.INSTANCE, Sdk.SDKMetric.SDKMetricType.MRAID_DOWNLOAD_JS_RETRY_SUCCESS, 0L, BaseAdLoader.this.getLogEntry$vungle_ads_release(), null, 10, null);
                        }
                        BaseAdLoader.this.downloadAssets();
                    }
                }, advertisement);
                return;
            }
        }
        Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.ASSET_WRITE_ERROR;
        onAdLoadFailed(new AssetDownloadError(reason, "Invalid directory. " + destinationDir).setLogEntry$vungle_ads_release(this.logEntry).logError$vungle_ads_release());
    }

    public final void loadAd(@NotNull AdLoaderCallback adLoaderCallback) {
        Intrinsics.checkNotNullParameter(adLoaderCallback, "adLoaderCallback");
        this.adLoaderCallback = adLoaderCallback;
        this.sdkExecutors.getBackgroundExecutor().execute(new Runnable() { // from class: com.vungle.ads.internal.load.a
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader.m4802loadAd$lambda0(BaseAdLoader.this);
            }
        });
    }

    public final void onAdLoadFailed(@NotNull VungleError error) {
        AdLoaderCallback adLoaderCallback;
        Intrinsics.checkNotNullParameter(error, "error");
        if (!this.notifySuccess.get() && this.notifyFailed.compareAndSet(false, true) && (adLoaderCallback = this.adLoaderCallback) != null) {
            adLoaderCallback.onFailure(error);
        }
    }

    public abstract void onAdLoadReady();

    protected abstract void requestAd();

    public final void setAdvertisement$vungle_ads_release(@Nullable AdPayload adPayload) {
        this.advertisement = adPayload;
    }

    public final void setLogEntry$vungle_ads_release(@Nullable LogEntry logEntry) {
        this.logEntry = logEntry;
    }
}
