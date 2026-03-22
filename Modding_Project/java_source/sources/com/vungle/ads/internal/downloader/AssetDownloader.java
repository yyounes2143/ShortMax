package com.vungle.ads.internal.downloader;

import com.unity3d.services.core.di.ServiceProvider;
import com.vungle.ads.NoSpaceError;
import com.vungle.ads.OutOfMemory;
import com.vungle.ads.internal.ConfigManager;
import com.vungle.ads.internal.downloader.AssetDownloadListener;
import com.vungle.ads.internal.downloader.AssetDownloader;
import com.vungle.ads.internal.executor.VungleThreadPoolExecutor;
import com.vungle.ads.internal.task.PriorityRunnable;
import com.vungle.ads.internal.util.Logger;
import com.vungle.ads.internal.util.PathProvider;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.c;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import ms.i;
import okhttp3.Cache;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.RealResponseBody;
import okio.GzipSource;
import okio.Okio;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: AssetDownloader.kt */
@Metadata
/* loaded from: classes7.dex */
public final class AssetDownloader implements Downloader {
    @NotNull
    private static final String CONTENT_ENCODING = "Content-Encoding";
    @NotNull
    private static final String CONTENT_TYPE = "Content-Type";
    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final int DOWNLOAD_CHUNK_SIZE = 2048;
    @NotNull
    private static final String GZIP = "gzip";
    private static final int MINIMUM_SPACE_REQUIRED_MB = 20971520;
    @NotNull
    private static final String TAG = "AssetDownloader";
    @NotNull
    private final VungleThreadPoolExecutor downloadExecutor;
    @NotNull
    private final i okHttpClient$delegate;
    @NotNull
    private final PathProvider pathProvider;
    @NotNull
    private final List<DownloadRequest> transitioning;

    /* compiled from: AssetDownloader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AssetDownloader.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class OkHttpSingleton {
        @NotNull
        public static final OkHttpSingleton INSTANCE = new OkHttpSingleton();
        @Nullable
        private static OkHttpClient client;

        private OkHttpSingleton() {
        }

        @NotNull
        public final OkHttpClient createOkHttpClient(@NotNull PathProvider pathProvider) {
            Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
            OkHttpClient okHttpClient = client;
            if (okHttpClient == null) {
                OkHttpClient.Builder builder = new OkHttpClient.Builder();
                TimeUnit timeUnit = TimeUnit.SECONDS;
                OkHttpClient.Builder n10 = builder.V(60L, timeUnit).f(60L, timeUnit).d(null).m(true).n(true);
                ConfigManager configManager = ConfigManager.INSTANCE;
                if (configManager.isCleverCacheEnabled()) {
                    long cleverCacheDiskSize = configManager.getCleverCacheDiskSize();
                    int cleverCacheDiskPercentage = configManager.getCleverCacheDiskPercentage();
                    String absolutePath = pathProvider.getCleverCacheDir().getAbsolutePath();
                    Intrinsics.checkNotNullExpressionValue(absolutePath, "pathProvider.getCleverCacheDir().absolutePath");
                    long min = Long.min(cleverCacheDiskSize, (pathProvider.getAvailableBytes(absolutePath) * cleverCacheDiskPercentage) / 100);
                    if (min > 0) {
                        n10.d(new Cache(pathProvider.getCleverCacheDir(), min));
                    } else {
                        Logger.Companion.w("OkHttpClientWrapper", "cache disk capacity size <=0, no clever cache active.");
                    }
                }
                OkHttpClient c10 = n10.c();
                client = c10;
                return c10;
            }
            return okHttpClient;
        }
    }

    public AssetDownloader(@NotNull VungleThreadPoolExecutor downloadExecutor, @NotNull PathProvider pathProvider) {
        Intrinsics.checkNotNullParameter(downloadExecutor, "downloadExecutor");
        Intrinsics.checkNotNullParameter(pathProvider, "pathProvider");
        this.downloadExecutor = downloadExecutor;
        this.pathProvider = pathProvider;
        this.okHttpClient$delegate = c.b(new Function0<OkHttpClient>() { // from class: com.vungle.ads.internal.downloader.AssetDownloader$okHttpClient$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            @NotNull
            public final OkHttpClient invoke() {
                PathProvider pathProvider2;
                AssetDownloader.OkHttpSingleton okHttpSingleton = AssetDownloader.OkHttpSingleton.INSTANCE;
                pathProvider2 = AssetDownloader.this.pathProvider;
                return okHttpSingleton.createOkHttpClient(pathProvider2);
            }
        });
        this.transitioning = new ArrayList();
    }

    private final boolean checkSpaceAvailable(DownloadRequest downloadRequest) {
        PathProvider pathProvider = this.pathProvider;
        String absolutePath = pathProvider.getVungleDir().getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "pathProvider.getVungleDir().absolutePath");
        long availableBytes = pathProvider.getAvailableBytes(absolutePath);
        if (availableBytes < ServiceProvider.HTTP_CACHE_DISK_SIZE) {
            new NoSpaceError("Insufficient space " + availableBytes).setLogEntry$vungle_ads_release(downloadRequest.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
            return false;
        }
        return true;
    }

    private final ResponseBody decodeGzipIfNeeded(Response response) {
        ResponseBody d10 = response.d();
        if (StringsKt.G(GZIP, Response.t(response, CONTENT_ENCODING, null, 2, null), true) && d10 != null) {
            return new RealResponseBody(Response.t(response, "Content-Type", null, 2, null), -1L, Okio.buffer(new GzipSource(d10.source())));
        }
        return d10;
    }

    private final void deliverError(DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener, AssetDownloadListener.DownloadError downloadError) {
        if (assetDownloadListener != null) {
            assetDownloadListener.onError(downloadError, downloadRequest);
        }
    }

    private final void deliverSuccess(File file, DownloadRequest downloadRequest, AssetDownloadListener assetDownloadListener) {
        Logger.Companion companion = Logger.Companion;
        companion.d(TAG, "On success " + downloadRequest);
        if (assetDownloadListener != null) {
            assetDownloadListener.onSuccess(file, downloadRequest);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: download$lambda-0  reason: not valid java name */
    public static final void m4795download$lambda0(DownloadRequest downloadRequest, AssetDownloader this$0, AssetDownloadListener assetDownloadListener) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.deliverError(downloadRequest, assetDownloadListener, new AssetDownloadListener.DownloadError(-1, new OutOfMemory("Failed to execute download request: " + downloadRequest.getAsset().getServerPath()), AssetDownloadListener.DownloadError.ErrorReason.Companion.getINTERNAL_ERROR()));
    }

    private final OkHttpClient getOkHttpClient() {
        return (OkHttpClient) this.okHttpClient$delegate.getValue();
    }

    private final boolean isValidUrl(String str) {
        if (str != null && str.length() != 0 && HttpUrl.f63457k.f(str) != null) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02ad, code lost:
        new com.vungle.ads.AssetWriteError("Asset save error " + r8).setLogEntry$vungle_ads_release(r25.getLogEntry$vungle_ads_release()).logErrorNoReturnValue$vungle_ads_release();
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x02d5, code lost:
        throw new com.vungle.ads.internal.downloader.Downloader.RequestException("File is not existing");
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x02d6, code lost:
        r1.flush();
        r0 = r6.getStatus();
        r2 = com.vungle.ads.internal.downloader.AssetDownloadListener.Progress.ProgressStatus.Companion;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x02e3, code lost:
        if (r0 != r2.getIN_PROGRESS()) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x02e5, code lost:
        r6.setStatus(r2.getDONE());
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x02f0, code lost:
        if (r13.d() == null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02f2, code lost:
        r0 = r13.d();
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02f6, code lost:
        if (r0 == null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x02f8, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x02fb, code lost:
        r12.cancel();
        r0 = com.vungle.ads.internal.util.FileUtility.INSTANCE;
        r0.closeQuietly(r1);
        r0.closeQuietly(r4);
        r0 = com.vungle.ads.internal.util.Logger.Companion;
        r0.d(com.vungle.ads.internal.downloader.AssetDownloader.TAG, "download status: " + r6.getStatus());
        r1 = r6.getStatus();
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0326, code lost:
        if (r1 != r2.getERROR()) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0328, code lost:
        r3 = r24;
        r10 = r25;
        r11 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0333, code lost:
        if (r1 != r2.getSTARTED()) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0336, code lost:
        r3.deliverError(r10, r11, r14);
        r2 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x033c, code lost:
        r3 = r24;
        r10 = r25;
        r11 = r26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0346, code lost:
        if (r1 != r2.getCANCELLED()) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0348, code lost:
        r1 = new java.lang.StringBuilder();
        r2 = r20;
        r1.append(r2);
        r1.append(r10);
        r0.d(com.vungle.ads.internal.downloader.AssetDownloader.TAG, r1.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x035d, code lost:
        r2 = r20;
        r3.deliverSuccess(r9, r10, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0362, code lost:
        r23 = r9;
        r9 = r3;
        r3 = r14;
        r14 = r23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:216:0x04d5 A[Catch: all -> 0x04c3, TryCatch #18 {all -> 0x04c3, blocks: (B:210:0x049b, B:221:0x04f7, B:216:0x04d5, B:218:0x04db, B:220:0x04df), top: B:281:0x049b }] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x050d  */
    /* JADX WARN: Removed duplicated region for block: B:224:0x0512  */
    /* JADX WARN: Removed duplicated region for block: B:226:0x0515  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0522  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x0552  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0580  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x059e  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x05a3  */
    /* JADX WARN: Removed duplicated region for block: B:251:0x05a6  */
    /* JADX WARN: Removed duplicated region for block: B:255:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:258:0x05e4  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0497 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v24, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r0v97, types: [com.vungle.ads.internal.util.FileUtility] */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v36, types: [okio.BufferedSink, java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v49 */
    /* JADX WARN: Type inference failed for: r1v50 */
    /* JADX WARN: Type inference failed for: r1v51 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void launchRequest(com.vungle.ads.internal.downloader.DownloadRequest r25, com.vungle.ads.internal.downloader.AssetDownloadListener r26) {
        /*
            Method dump skipped, instructions count: 1551
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.ads.internal.downloader.AssetDownloader.launchRequest(com.vungle.ads.internal.downloader.DownloadRequest, com.vungle.ads.internal.downloader.AssetDownloadListener):void");
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancel(@Nullable DownloadRequest downloadRequest) {
        if (downloadRequest != null && !downloadRequest.isCancelled()) {
            downloadRequest.cancel();
        }
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void cancelAll() {
        for (DownloadRequest downloadRequest : this.transitioning) {
            cancel(downloadRequest);
        }
        this.transitioning.clear();
    }

    @Override // com.vungle.ads.internal.downloader.Downloader
    public void download(@Nullable final DownloadRequest downloadRequest, @Nullable final AssetDownloadListener assetDownloadListener) {
        if (downloadRequest == null) {
            return;
        }
        this.transitioning.add(downloadRequest);
        this.downloadExecutor.execute(new PriorityRunnable() { // from class: com.vungle.ads.internal.downloader.AssetDownloader$download$1
            @Override // com.vungle.ads.internal.task.PriorityRunnable
            public int getPriority() {
                return downloadRequest.getPriority();
            }

            @Override // java.lang.Runnable
            public void run() {
                AssetDownloader.this.launchRequest(downloadRequest, assetDownloadListener);
            }
        }, new Runnable() { // from class: com.vungle.ads.internal.downloader.a
            @Override // java.lang.Runnable
            public final void run() {
                AssetDownloader.m4795download$lambda0(DownloadRequest.this, this, assetDownloadListener);
            }
        });
    }
}
