package com.unity3d.ads.core.data.repository;

import android.content.Context;
import com.unity3d.ads.core.data.datasource.CacheDataSource;
import com.unity3d.ads.core.data.model.CacheResult;
import com.unity3d.ads.core.data.model.CachedFile;
import com.unity3d.ads.core.domain.CreateFile;
import com.unity3d.ads.core.domain.GetCacheDirectory;
import com.unity3d.ads.core.domain.work.DownloadPriorityQueue;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import gt.c0;
import gt.e;
import gt.f0;
import gt.g0;
import java.io.File;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.coroutines.i;
import kotlinx.coroutines.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import rs.c;
/* compiled from: AndroidCacheRepository.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidCacheRepository.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidCacheRepository.kt\ncom/unity3d/ads/core/data/repository/AndroidCacheRepository\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,132:1\n1#2:133\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidCacheRepository implements CacheRepository {
    @NotNull
    private final File cacheDir;
    @NotNull
    private final CleanupDirectory cleanupDirectory;
    @NotNull
    private final Context context;
    @NotNull
    private final CreateFile createFile;
    @NotNull
    private final DownloadPriorityQueue downloadPriorityQueue;
    @NotNull
    private final GetCacheDirectory getCacheDirectory;
    @NotNull
    private final CacheDataSource localCacheDataSource;
    @NotNull
    private final CacheDataSource remoteCacheDataSource;
    @NotNull
    private final g0 scope;
    @NotNull
    private final SessionRepository sessionRepository;
    @NotNull
    private final File webviewCacheDir;

    public AndroidCacheRepository(@NotNull c0 ioDispatcher, @NotNull GetCacheDirectory getCacheDirectory, @NotNull CacheDataSource localCacheDataSource, @NotNull CacheDataSource remoteCacheDataSource, @NotNull Context context, @NotNull SessionRepository sessionRepository, @NotNull CleanupDirectory cleanupDirectory, @NotNull DownloadPriorityQueue downloadPriorityQueue, @NotNull CreateFile createFile) {
        Intrinsics.checkNotNullParameter(ioDispatcher, "ioDispatcher");
        Intrinsics.checkNotNullParameter(getCacheDirectory, "getCacheDirectory");
        Intrinsics.checkNotNullParameter(localCacheDataSource, "localCacheDataSource");
        Intrinsics.checkNotNullParameter(remoteCacheDataSource, "remoteCacheDataSource");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(cleanupDirectory, "cleanupDirectory");
        Intrinsics.checkNotNullParameter(downloadPriorityQueue, "downloadPriorityQueue");
        Intrinsics.checkNotNullParameter(createFile, "createFile");
        this.getCacheDirectory = getCacheDirectory;
        this.localCacheDataSource = localCacheDataSource;
        this.remoteCacheDataSource = remoteCacheDataSource;
        this.context = context;
        this.sessionRepository = sessionRepository;
        this.cleanupDirectory = cleanupDirectory;
        this.downloadPriorityQueue = downloadPriorityQueue;
        this.createFile = createFile;
        this.scope = i.i(i.i(i.a(ioDispatcher), new f0("CacheRepository")), v.f61916a);
        this.cacheDir = initCacheDir(UnityAdsConstants.DefaultUrls.CACHE_DIR_NAME);
        this.webviewCacheDir = initCacheDir(UnityAdsConstants.DefaultUrls.CACHE_WEBVIEW_DIR_NAME);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object getFileInternal(File file, String str, JSONArray jSONArray, int i10, c<? super CacheResult> cVar) {
        return e.g(this.scope.getCoroutineContext(), new AndroidCacheRepository$getFileInternal$2(this, str, file, i10, null), cVar);
    }

    private final File initCacheDir(String str) {
        GetCacheDirectory getCacheDirectory = this.getCacheDirectory;
        File cacheDir = this.context.getCacheDir();
        Intrinsics.checkNotNullExpressionValue(cacheDir, "context.cacheDir");
        File invoke = getCacheDirectory.invoke(cacheDir, str);
        invoke.mkdirs();
        return invoke;
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    @Nullable
    public Object clearCache(@NotNull c<? super Unit> cVar) {
        return e.g(this.scope.getCoroutineContext(), new AndroidCacheRepository$clearCache$2(this, null), cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object doesFileExist(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull rs.c<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.unity3d.ads.core.data.repository.AndroidCacheRepository$doesFileExist$1
            if (r0 == 0) goto L13
            r0 = r6
            com.unity3d.ads.core.data.repository.AndroidCacheRepository$doesFileExist$1 r0 = (com.unity3d.ads.core.data.repository.AndroidCacheRepository$doesFileExist$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.ads.core.data.repository.AndroidCacheRepository$doesFileExist$1 r0 = new com.unity3d.ads.core.data.repository.AndroidCacheRepository$doesFileExist$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L3d
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            r0.label = r3
            java.lang.Object r6 = r4.retrieveFile(r5, r0)
            if (r6 != r1) goto L3d
            return r1
        L3d:
            boolean r5 = r6 instanceof com.unity3d.ads.core.data.model.CacheResult.Success
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.a.a(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.data.repository.AndroidCacheRepository.doesFileExist(java.lang.String, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    @Nullable
    public Object getCacheSize(@NotNull c<? super Long> cVar) {
        return e.g(this.scope.getCoroutineContext(), new AndroidCacheRepository$getCacheSize$2(this, null), cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    @Nullable
    public Object getFile(@NotNull String str, @Nullable JSONArray jSONArray, int i10, @NotNull c<? super CacheResult> cVar) {
        return getFileInternal(this.cacheDir, str, jSONArray, i10, cVar);
    }

    @NotNull
    public final String getFilename(@NotNull String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        return StringExtensionsKt.getSHA256Hash(url) + '.' + StringsKt.k1(url, '.', null, 2, null);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    @Nullable
    public Object getWebviewFile(@NotNull String str, @NotNull String str2, @NotNull c<? super CacheResult> cVar) {
        File invoke = this.createFile.invoke(this.webviewCacheDir, str2);
        invoke.mkdirs();
        return getFileInternal(invoke, str, null, 0, cVar);
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    public boolean removeFile(@NotNull CachedFile cachedFile) {
        Intrinsics.checkNotNullParameter(cachedFile, "cachedFile");
        File file = cachedFile.getFile();
        if (file != null) {
            if (!file.exists()) {
                file = null;
            }
            if (file != null) {
                return file.delete();
            }
        }
        return false;
    }

    @Override // com.unity3d.ads.core.data.repository.CacheRepository
    @Nullable
    public Object retrieveFile(@NotNull String str, @NotNull c<? super CacheResult> cVar) {
        return CacheDataSource.DefaultImpls.getFile$default(this.localCacheDataSource, this.cacheDir, str, null, null, cVar, 12, null);
    }
}
