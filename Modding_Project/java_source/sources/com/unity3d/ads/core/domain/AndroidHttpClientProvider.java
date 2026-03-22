package com.unity3d.ads.core.domain;

import android.content.Context;
import com.google.android.gms.net.CronetProviderInstaller;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.configuration.MediationTraitsMetadataReader;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.SendDiagnosticEvent;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.di.ServiceProvider;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.domain.task.ConfigFileFromLocalStorage;
import com.unity3d.services.core.network.core.CronetClient;
import com.unity3d.services.core.network.core.CronetEngineBuilderFactory;
import com.unity3d.services.core.network.core.HttpClient;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import gt.i;
import java.io.File;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.p0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import ms.k;
import okhttp3.OkHttpClient;
import org.chromium.net.CronetEngine;
import org.jetbrains.annotations.NotNull;
import qt.d;
import rs.c;
import ws.f;
/* compiled from: AndroidHttpClientProvider.kt */
@Metadata
@SourceDebugExtension({"SMAP\nAndroidHttpClientProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,171:1\n107#2,10:172\n314#3,11:182\n*S KotlinDebug\n*F\n+ 1 AndroidHttpClientProvider.kt\ncom/unity3d/ads/core/domain/AndroidHttpClientProvider\n*L\n59#1:172,10\n127#1:182,11\n*E\n"})
/* loaded from: classes7.dex */
public final class AndroidHttpClientProvider implements HttpClientProvider {
    @NotNull
    private final AlternativeFlowReader alternativeFlowReader;
    @NotNull
    private final Map<Boolean, HttpClient> cacheHttpClientMap;
    @NotNull
    private final CleanupDirectory cleanupDirectory;
    @NotNull
    private final ConfigFileFromLocalStorage configFileFromLocalStorage;
    @NotNull
    private final Context context;
    @NotNull
    private final CronetEngineBuilderFactory cronetEngineBuilderFactory;
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final qt.a httpClientMutex;
    @NotNull
    private final MediationTraitsMetadataReader mediationTraitsMetadataReader;
    @NotNull
    private final SendDiagnosticEvent sendDiagnosticEvent;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidHttpClientProvider(@NotNull ConfigFileFromLocalStorage configFileFromLocalStorage, @NotNull AlternativeFlowReader alternativeFlowReader, @NotNull ISDKDispatchers dispatchers, @NotNull SendDiagnosticEvent sendDiagnosticEvent, @NotNull Context context, @NotNull CronetEngineBuilderFactory cronetEngineBuilderFactory, @NotNull SessionRepository sessionRepository, @NotNull CleanupDirectory cleanupDirectory, @NotNull MediationTraitsMetadataReader mediationTraitsMetadataReader) {
        Intrinsics.checkNotNullParameter(configFileFromLocalStorage, "configFileFromLocalStorage");
        Intrinsics.checkNotNullParameter(alternativeFlowReader, "alternativeFlowReader");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(sendDiagnosticEvent, "sendDiagnosticEvent");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(cronetEngineBuilderFactory, "cronetEngineBuilderFactory");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(cleanupDirectory, "cleanupDirectory");
        Intrinsics.checkNotNullParameter(mediationTraitsMetadataReader, "mediationTraitsMetadataReader");
        this.configFileFromLocalStorage = configFileFromLocalStorage;
        this.alternativeFlowReader = alternativeFlowReader;
        this.dispatchers = dispatchers;
        this.sendDiagnosticEvent = sendDiagnosticEvent;
        this.context = context;
        this.cronetEngineBuilderFactory = cronetEngineBuilderFactory;
        this.sessionRepository = sessionRepository;
        this.cleanupDirectory = cleanupDirectory;
        this.mediationTraitsMetadataReader = mediationTraitsMetadataReader;
        this.httpClientMutex = d.b(false, 1, null);
        this.cacheHttpClientMap = new LinkedHashMap();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildCronetCachePath(Context context) {
        File filesDir = context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "context.filesDir");
        File z10 = f.z(filesDir, UnityAdsConstants.DefaultUrls.HTTP_CACHE_DIR_NAME);
        if (!z10.exists()) {
            z10.mkdirs();
        }
        String absolutePath = z10.getAbsolutePath();
        Intrinsics.checkNotNullExpressionValue(absolutePath, "cacheDir.absolutePath");
        return absolutePath;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object buildNetworkClient(final Context context, final ISDKDispatchers iSDKDispatchers, c<? super HttpClient> cVar) {
        final e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        CronetProviderInstaller.installProvider(context).addOnCompleteListener(new OnCompleteListener() { // from class: com.unity3d.ads.core.domain.AndroidHttpClientProvider$buildNetworkClient$2$1
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(@NotNull Task<Void> it) {
                SendDiagnosticEvent sendDiagnosticEvent;
                SessionRepository sessionRepository;
                CleanupDirectory cleanupDirectory;
                AlternativeFlowReader alternativeFlowReader;
                String message;
                SessionRepository sessionRepository2;
                long j10;
                SendDiagnosticEvent sendDiagnosticEvent2;
                SessionRepository sessionRepository3;
                CleanupDirectory cleanupDirectory2;
                AlternativeFlowReader alternativeFlowReader2;
                CronetEngineBuilderFactory cronetEngineBuilderFactory;
                String buildCronetCachePath;
                SessionRepository sessionRepository4;
                Intrinsics.checkNotNullParameter(it, "it");
                String str = "Errored without message.";
                if (it.isSuccessful()) {
                    sessionRepository2 = AndroidHttpClientProvider.this.sessionRepository;
                    if (sessionRepository2.getNativeConfiguration().hasCachedAssetsConfiguration()) {
                        sessionRepository4 = AndroidHttpClientProvider.this.sessionRepository;
                        long j11 = 1024;
                        j10 = sessionRepository4.getNativeConfiguration().getCachedAssetsConfiguration().getMaxCachedAssetSizeMb() * j11 * j11;
                    } else {
                        j10 = ServiceProvider.HTTP_CACHE_DISK_SIZE;
                    }
                    try {
                        cronetEngineBuilderFactory = AndroidHttpClientProvider.this.cronetEngineBuilderFactory;
                        CronetEngine.Builder createCronetEngineBuilder = cronetEngineBuilderFactory.createCronetEngineBuilder(context);
                        buildCronetCachePath = AndroidHttpClientProvider.this.buildCronetCachePath(context);
                        CronetEngine cronetEngine = createCronetEngineBuilder.setStoragePath(buildCronetCachePath).enableHttpCache(3, j10).enableQuic(true).addQuicHint(ServiceProvider.GATEWAY_HOST, 443, 443).addQuicHint(ServiceProvider.CDN_CREATIVES_HOST, 443, 443).build();
                        i<HttpClient> iVar = eVar;
                        Result.a aVar = Result.f60901b;
                        Intrinsics.checkNotNullExpressionValue(cronetEngine, "cronetEngine");
                        iVar.resumeWith(Result.d(new CronetClient(cronetEngine, iSDKDispatchers)));
                        return;
                    } catch (Throwable th2) {
                        sendDiagnosticEvent2 = AndroidHttpClientProvider.this.sendDiagnosticEvent;
                        String message2 = th2.getMessage();
                        if (message2 != null) {
                            str = message2;
                        }
                        SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent2, "native_cronet_engine_error", null, p0.f(k.a("reason", str)), null, null, null, 58, null);
                        i<HttpClient> iVar2 = eVar;
                        Result.a aVar2 = Result.f60901b;
                        ISDKDispatchers iSDKDispatchers2 = iSDKDispatchers;
                        OkHttpClient okHttpClient = new OkHttpClient();
                        Context context2 = context;
                        sessionRepository3 = AndroidHttpClientProvider.this.sessionRepository;
                        cleanupDirectory2 = AndroidHttpClientProvider.this.cleanupDirectory;
                        alternativeFlowReader2 = AndroidHttpClientProvider.this.alternativeFlowReader;
                        iVar2.resumeWith(Result.d(new OkHttp3Client(iSDKDispatchers2, okHttpClient, context2, sessionRepository3, cleanupDirectory2, alternativeFlowReader2)));
                        return;
                    }
                }
                sendDiagnosticEvent = AndroidHttpClientProvider.this.sendDiagnosticEvent;
                Exception exception = it.getException();
                if (exception != null && (message = exception.getMessage()) != null) {
                    str = message;
                }
                SendDiagnosticEvent.DefaultImpls.invoke$default(sendDiagnosticEvent, "native_cronet_install_error", null, p0.f(k.a("reason", str)), null, null, null, 58, null);
                i<HttpClient> iVar3 = eVar;
                Result.a aVar3 = Result.f60901b;
                ISDKDispatchers iSDKDispatchers3 = iSDKDispatchers;
                OkHttpClient okHttpClient2 = new OkHttpClient();
                Context context3 = context;
                sessionRepository = AndroidHttpClientProvider.this.sessionRepository;
                cleanupDirectory = AndroidHttpClientProvider.this.cleanupDirectory;
                alternativeFlowReader = AndroidHttpClientProvider.this.alternativeFlowReader;
                iVar3.resumeWith(Result.d(new OkHttp3Client(iSDKDispatchers3, okHttpClient2, context3, sessionRepository, cleanupDirectory, alternativeFlowReader)));
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0082 A[Catch: all -> 0x00c1, TryCatch #0 {all -> 0x00c1, blocks: (B:24:0x0072, B:27:0x0082, B:29:0x009a, B:34:0x00a7, B:36:0x00b6, B:39:0x00c5, B:54:0x0133, B:56:0x0140, B:58:0x0146, B:60:0x014c, B:62:0x0167), top: B:70:0x0072 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e8 A[Catch: all -> 0x0041, TryCatch #1 {all -> 0x0041, blocks: (B:13:0x003c, B:43:0x00e4, B:45:0x00e8, B:50:0x00f3, B:52:0x0110, B:64:0x016f), top: B:71:0x003c }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0110 A[Catch: all -> 0x0041, TRY_LEAVE, TryCatch #1 {all -> 0x0041, blocks: (B:13:0x003c, B:43:0x00e4, B:45:0x00e8, B:50:0x00f3, B:52:0x0110, B:64:0x016f), top: B:71:0x003c }] */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // com.unity3d.ads.core.domain.HttpClientProvider
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object invoke(boolean r26, @org.jetbrains.annotations.NotNull rs.c<? super com.unity3d.services.core.network.core.HttpClient> r27) {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.ads.core.domain.AndroidHttpClientProvider.invoke(boolean, rs.c):java.lang.Object");
    }
}
