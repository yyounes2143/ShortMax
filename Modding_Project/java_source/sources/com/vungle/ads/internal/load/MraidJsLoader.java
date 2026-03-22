package com.vungle.ads.internal.load;

import com.vungle.ads.MraidJsError;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.Constants;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.downloader.Downloader;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.load.MraidJsLoader;
import com.vungle.ads.internal.model.AdAsset;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MraidJsLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MraidJsLoader {
    public static final int MRAID_AVAILABLE = 13;
    public static final int MRAID_DOWNLOADED = 10;
    public static final int MRAID_DOWNLOAD_FAILED = 12;
    public static final int MRAID_INVALID_ENDPOINT = 11;
    @NotNull
    private static final String TAG = "MraidJsLoader";
    @NotNull
    public static final MraidJsLoader INSTANCE = new MraidJsLoader();
    @NotNull
    private static final AtomicBoolean isDownloading = new AtomicBoolean(false);
    @NotNull
    private static final CopyOnWriteArrayList<DownloadResultListener> listeners = new CopyOnWriteArrayList<>();

    /* compiled from: MraidJsLoader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public interface DownloadResultListener {
        void onDownloadResult(int i10);
    }

    private MraidJsLoader() {
    }

    public static /* synthetic */ void downloadJs$default(MraidJsLoader mraidJsLoader, PathProvider pathProvider, Downloader downloader, VungleThreadPoolExecutor vungleThreadPoolExecutor, DownloadResultListener downloadResultListener, AdPayload adPayload, int i10, Object obj) {
        DownloadResultListener downloadResultListener2;
        AdPayload adPayload2;
        if ((i10 & 8) != 0) {
            downloadResultListener2 = null;
        } else {
            downloadResultListener2 = downloadResultListener;
        }
        if ((i10 & 16) != 0) {
            adPayload2 = null;
        } else {
            adPayload2 = adPayload;
        }
        mraidJsLoader.downloadJs(pathProvider, downloader, vungleThreadPoolExecutor, downloadResultListener2, adPayload2);
    }

    /* renamed from: downloadJs$lambda-1 */
    public static final void m4808downloadJs$lambda1(DownloadResultListener downloadResultListener, AdPayload adPayload, PathProvider pathProvider, Downloader downloader, VungleThreadPoolExecutor executor) {
        Intrinsics.checkNotNullParameter(pathProvider, "$pathProvider");
        Intrinsics.checkNotNullParameter(downloader, "$downloader");
        Intrinsics.checkNotNullParameter(executor, "$executor");
        if (downloadResultListener != null) {
            try {
                listeners.add(downloadResultListener);
            } catch (Exception e10) {
                Logger.Companion.e(TAG, "Failed to download mraid js", e10);
                return;
            }
        }
        if (isDownloading.getAndSet(true)) {
            Logger.Companion.w(TAG, "mraid js is downloading, waiting for the previous request.");
            return;
        }
        ConfigManager configManager = ConfigManager.INSTANCE;
        String mraidEndpoint = configManager.getMraidEndpoint();
        LogEntry logEntry = null;
        if (mraidEndpoint != null && mraidEndpoint.length() != 0) {
            File file = new File(pathProvider.getJsAssetDir(configManager.getMraidJsVersion()), Constants.MRAID_JS_FILE_NAME);
            if (file.exists()) {
                Logger.Companion.w(TAG, "mraid js already downloaded");
                INSTANCE.notifyListeners(13);
                return;
            }
            File jsDir = pathProvider.getJsDir();
            FileUtility.deleteContents(jsDir);
            String absolutePath = file.getAbsolutePath();
            Intrinsics.checkNotNullExpressionValue(absolutePath, "mraidJsFile.absolutePath");
            AdAsset adAsset = new AdAsset(Constants.MRAID_JS_FILE_NAME, mraidEndpoint + "/mraid.min.js", absolutePath, AdAsset.FileType.ASSET, true);
            DownloadRequest.Priority priority = DownloadRequest.Priority.HIGH;
            if (adPayload != null) {
                logEntry = adPayload.getLogEntry$vungle_ads_release();
            }
            downloader.download(new DownloadRequest(priority, adAsset, logEntry), new MraidJsLoader$downloadJs$1$2(executor, adPayload, jsDir, file));
            return;
        }
        MraidJsError mraidJsError = new MraidJsError(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, "Mraid endpoint is empty");
        if (adPayload != null) {
            logEntry = adPayload.getLogEntry$vungle_ads_release();
        }
        mraidJsError.setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
        INSTANCE.notifyListeners(11);
    }

    public final void notifyListeners(int i10) {
        for (DownloadResultListener downloadResultListener : listeners) {
            downloadResultListener.onDownloadResult(i10);
        }
        listeners.clear();
        isDownloading.set(false);
    }

    public final void downloadJs(@NotNull final PathProvider pathProvider, @NotNull final Downloader downloader, @NotNull final VungleThreadPoolExecutor executor, @Nullable final DownloadResultListener downloadResultListener, @Nullable final AdPayload adPayload) {
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        Intrinsics.checkNotNullParameter(downloader, "downloader");
        Intrinsics.checkNotNullParameter(executor, "executor");
        executor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.f
            @Override // java.lang.Runnable
            public final void run() {
                MraidJsLoader.m4808downloadJs$lambda1(MraidJsLoader.DownloadResultListener.this, adPayload, pathProvider, downloader, executor);
            }
        });
    }
}
