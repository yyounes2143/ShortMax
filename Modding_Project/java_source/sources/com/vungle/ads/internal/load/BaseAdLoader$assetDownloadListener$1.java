package com.vungle.ads.internal.load;

import com.vungle.ads.AnalyticsClient;
import com.vungle.ads.AssetDownloadError;
import com.vungle.ads.SingleValueMetric;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.Logger;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: BaseAdLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class BaseAdLoader$assetDownloadListener$1 implements AssetDownloadListener {
    final /* synthetic */ BaseAdLoader this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseAdLoader$assetDownloadListener$1(BaseAdLoader baseAdLoader) {
        this.this$0 = baseAdLoader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onError$lambda-0  reason: not valid java name */
    public static final void m4804onError$lambda0(BaseAdLoader this$0, DownloadRequest downloadRequest, AssetDownloadListener.DownloadError downloadError) {
        AtomicBoolean atomicBoolean;
        Integer num;
        AtomicLong atomicLong;
        AtomicLong atomicLong2;
        AtomicBoolean atomicBoolean2;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(downloadRequest, "$downloadRequest");
        atomicBoolean = this$0.fullyDownloaded;
        atomicBoolean.set(false);
        if (downloadRequest.getAsset().isRequired()) {
            atomicBoolean2 = this$0.requiredAssetDownloaded;
            atomicBoolean2.set(false);
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Failed to download assets. required=");
        sb2.append(downloadRequest.getAsset().isRequired());
        sb2.append(" reason=");
        Throwable th2 = null;
        if (downloadError != null) {
            num = Integer.valueOf(downloadError.getReason());
        } else {
            num = null;
        }
        sb2.append(num);
        sb2.append(" cause=");
        if (downloadError != null) {
            th2 = downloadError.getCause();
        }
        sb2.append(th2);
        String sb3 = sb2.toString();
        if (downloadRequest.getAsset().isRequired()) {
            atomicLong2 = this$0.downloadRequiredCount;
            if (atomicLong2.decrementAndGet() <= 0) {
                this$0.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, sb3).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                this$0.cancel();
                return;
            }
        }
        atomicLong = this$0.downloadCount;
        if (atomicLong.decrementAndGet() <= 0) {
            this$0.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, sb3).setLogEntry$vungle_ads_release(this$0.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-1  reason: not valid java name */
    public static final void m4805onSuccess$lambda1(File file, BaseAdLoader$assetDownloadListener$1 this$0, DownloadRequest downloadRequest, BaseAdLoader this$1) {
        SingleValueMetric singleValueMetric;
        SingleValueMetric singleValueMetric2;
        AtomicLong atomicLong;
        AtomicBoolean atomicBoolean;
        AtomicLong atomicLong2;
        AtomicBoolean atomicBoolean2;
        boolean processVmTemplate;
        AtomicBoolean atomicBoolean3;
        AtomicBoolean atomicBoolean4;
        Intrinsics.checkNotNullParameter(file, "$file");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(downloadRequest, "$downloadRequest");
        Intrinsics.checkNotNullParameter(this$1, "this$1");
        if (!file.exists()) {
            this$0.onError(new AssetDownloadListener.DownloadError(-1, new IOException("Downloaded file not found!"), AssetDownloadListener.DownloadError.ErrorReason.Companion.getFILE_NOT_FOUND_ERROR()), downloadRequest);
            return;
        }
        AdAsset asset = downloadRequest.getAsset();
        asset.setFileSize(file.length());
        asset.setStatus(AdAsset.Status.DOWNLOAD_SUCCESS);
        if (downloadRequest.isTemplate()) {
            downloadRequest.stopRecord();
            SingleValueMetric singleValueMetric3 = downloadRequest.isHtmlTemplate() ? this$1.templateHtmlSizeMetric : this$1.templateSizeMetric;
            singleValueMetric3.setValue(Long.valueOf(file.length()));
            AnalyticsClient.INSTANCE.logMetric$vungle_ads_release(singleValueMetric3, this$1.getLogEntry$vungle_ads_release(), asset.getServerPath());
        } else if (downloadRequest.isMainVideo()) {
            singleValueMetric = this$1.mainVideoSizeMetric;
            singleValueMetric.setValue(Long.valueOf(file.length()));
            AnalyticsClient analyticsClient = AnalyticsClient.INSTANCE;
            singleValueMetric2 = this$1.mainVideoSizeMetric;
            analyticsClient.logMetric$vungle_ads_release(singleValueMetric2, this$1.getLogEntry$vungle_ads_release(), asset.getServerPath());
        }
        AdPayload advertisement$vungle_ads_release = this$1.getAdvertisement$vungle_ads_release();
        if (advertisement$vungle_ads_release != null) {
            advertisement$vungle_ads_release.updateAdAssetPath(asset);
        }
        if (downloadRequest.isTemplate()) {
            processVmTemplate = this$1.processVmTemplate(asset, this$1.getAdvertisement$vungle_ads_release());
            if (!processVmTemplate) {
                atomicBoolean3 = this$1.fullyDownloaded;
                atomicBoolean3.set(false);
                if (asset.isRequired()) {
                    atomicBoolean4 = this$1.requiredAssetDownloaded;
                    atomicBoolean4.set(false);
                }
            }
        }
        if (asset.isRequired()) {
            atomicLong2 = this$1.downloadRequiredCount;
            if (atomicLong2.decrementAndGet() <= 0) {
                atomicBoolean2 = this$1.requiredAssetDownloaded;
                if (atomicBoolean2.get()) {
                    this$1.onRequiredDownloadCompleted();
                } else {
                    this$1.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, "Failed to download required assets.").setLogEntry$vungle_ads_release(this$1.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
                    this$1.cancel();
                    return;
                }
            }
        }
        atomicLong = this$1.downloadCount;
        if (atomicLong.decrementAndGet() <= 0) {
            atomicBoolean = this$1.fullyDownloaded;
            if (atomicBoolean.get()) {
                this$1.onDownloadCompleted(this$1.getAdRequest());
            } else {
                this$1.onAdLoadFailed(new AssetDownloadError(Sdk.SDKError.Reason.ASSET_RESPONSE_DATA_ERROR, "Failed to download assets.").setLogEntry$vungle_ads_release(this$1.getLogEntry$vungle_ads_release()).logError$vungle_ads_release());
            }
        }
    }

    @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
    public void onError(@Nullable final AssetDownloadListener.DownloadError downloadError, @NotNull final DownloadRequest downloadRequest) {
        Integer num;
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        Logger.Companion companion = Logger.Companion;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("onError called: reason ");
        Throwable th2 = null;
        if (downloadError != null) {
            num = Integer.valueOf(downloadError.getReason());
        } else {
            num = null;
        }
        sb2.append(num);
        sb2.append("; cause ");
        if (downloadError != null) {
            th2 = downloadError.getCause();
        }
        sb2.append(th2);
        companion.e("BaseAdLoader", sb2.toString());
        VungleThreadPoolExecutor backgroundExecutor = this.this$0.getSdkExecutors().getBackgroundExecutor();
        final BaseAdLoader baseAdLoader = this.this$0;
        backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.c
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader$assetDownloadListener$1.m4804onError$lambda0(BaseAdLoader.this, downloadRequest, downloadError);
            }
        });
    }

    @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
    public void onSuccess(@NotNull final File file, @NotNull final DownloadRequest downloadRequest) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        VungleThreadPoolExecutor backgroundExecutor = this.this$0.getSdkExecutors().getBackgroundExecutor();
        final BaseAdLoader baseAdLoader = this.this$0;
        backgroundExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.b
            @Override // java.lang.Runnable
            public final void run() {
                BaseAdLoader$assetDownloadListener$1.m4805onSuccess$lambda1(file, this, downloadRequest, baseAdLoader);
            }
        });
    }
}
