package com.vungle.ads.internal.load;

import com.vungle.ads.MraidJsError;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.DownloadRequest;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.protos.Sdk;
import com.vungle.ads.internal.util.FileUtility;
import com.vungle.ads.internal.util.LogEntry;
import com.vungle.ads.internal.util.Logger;
import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: MraidJsLoader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class MraidJsLoader$downloadJs$1$2 implements AssetDownloadListener {
    final /* synthetic */ AdPayload $advertisement;
    final /* synthetic */ VungleThreadPoolExecutor $executor;
    final /* synthetic */ File $jsPath;
    final /* synthetic */ File $mraidJsFile;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidJsLoader$downloadJs$1$2(VungleThreadPoolExecutor vungleThreadPoolExecutor, AdPayload adPayload, File file, File file2) {
        this.$executor = vungleThreadPoolExecutor;
        this.$advertisement = adPayload;
        this.$jsPath = file;
        this.$mraidJsFile = file2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onError$lambda-0  reason: not valid java name */
    public static final void m4809onError$lambda0(AssetDownloadListener.DownloadError downloadError, DownloadRequest downloadRequest, AdPayload adPayload, File jsPath) {
        Integer num;
        String str;
        Throwable cause;
        Intrinsics.checkNotNullParameter(downloadRequest, "$downloadRequest");
        Intrinsics.checkNotNullParameter(jsPath, "$jsPath");
        try {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("download mraid js error: ");
                LogEntry logEntry = null;
                if (downloadError != null) {
                    num = Integer.valueOf(downloadError.getServerCode());
                } else {
                    num = null;
                }
                sb2.append(num);
                sb2.append(". Failed to load ");
                sb2.append(downloadRequest.getAsset().getServerPath());
                sb2.append(", reason: ");
                if (downloadError != null && (cause = downloadError.getCause()) != null) {
                    str = cause.getMessage();
                } else {
                    str = null;
                }
                sb2.append(str);
                String sb3 = sb2.toString();
                Logger.Companion.d("MraidJsLoader", sb3);
                MraidJsError mraidJsError = new MraidJsError(Sdk.SDKError.Reason.MRAID_DOWNLOAD_JS_ERROR, sb3);
                if (adPayload != null) {
                    logEntry = adPayload.getLogEntry$vungle_ads_release();
                }
                mraidJsError.setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
                FileUtility.deleteContents(jsPath);
            } catch (Exception e10) {
                Logger.Companion.e("MraidJsLoader", "Failed to delete js assets", e10);
            }
            MraidJsLoader.INSTANCE.notifyListeners(12);
        } catch (Throwable th2) {
            MraidJsLoader.INSTANCE.notifyListeners(12);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onSuccess$lambda-1  reason: not valid java name */
    public static final void m4810onSuccess$lambda1(File file, File mraidJsFile, AdPayload adPayload, File jsPath) {
        LogEntry logEntry;
        Intrinsics.checkNotNullParameter(file, "$file");
        Intrinsics.checkNotNullParameter(mraidJsFile, "$mraidJsFile");
        Intrinsics.checkNotNullParameter(jsPath, "$jsPath");
        try {
            if (file.exists() && file.length() > 0) {
                MraidJsLoader.INSTANCE.notifyListeners(10);
                return;
            }
            Sdk.SDKError.Reason reason = Sdk.SDKError.Reason.MRAID_JS_WRITE_FAILED;
            MraidJsError mraidJsError = new MraidJsError(reason, "Mraid js downloaded but write failure: " + mraidJsFile.getAbsolutePath());
            if (adPayload != null) {
                logEntry = adPayload.getLogEntry$vungle_ads_release();
            } else {
                logEntry = null;
            }
            mraidJsError.setLogEntry$vungle_ads_release(logEntry).logErrorNoReturnValue$vungle_ads_release();
            FileUtility.deleteContents(jsPath);
            MraidJsLoader.INSTANCE.notifyListeners(12);
        } catch (Exception e10) {
            Logger.Companion.e("MraidJsLoader", "Failed to delete js assets", e10);
            MraidJsLoader.INSTANCE.notifyListeners(12);
        }
    }

    @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
    public void onError(@Nullable final AssetDownloadListener.DownloadError downloadError, @NotNull final DownloadRequest downloadRequest) {
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        VungleThreadPoolExecutor vungleThreadPoolExecutor = this.$executor;
        final AdPayload adPayload = this.$advertisement;
        final File file = this.$jsPath;
        vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.h
            @Override // java.lang.Runnable
            public final void run() {
                MraidJsLoader$downloadJs$1$2.m4809onError$lambda0(AssetDownloadListener.DownloadError.this, downloadRequest, adPayload, file);
            }
        });
    }

    @Override // com.vungle.ads.internal.downloader.AssetDownloadListener
    public void onSuccess(@NotNull final File file, @NotNull DownloadRequest downloadRequest) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(downloadRequest, "downloadRequest");
        VungleThreadPoolExecutor vungleThreadPoolExecutor = this.$executor;
        final File file2 = this.$mraidJsFile;
        final AdPayload adPayload = this.$advertisement;
        final File file3 = this.$jsPath;
        vungleThreadPoolExecutor.execute(new Runnable() { // from class: com.vungle.ads.internal.load.g
            @Override // java.lang.Runnable
            public final void run() {
                MraidJsLoader$downloadJs$1$2.m4810onSuccess$lambda1(file, file2, adPayload, file3);
            }
        });
    }
}
