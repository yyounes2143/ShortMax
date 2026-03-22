package com.unity3d.services.core.network.core;

import android.content.Context;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.extensions.StringExtensionsKt;
import com.unity3d.services.UnityAdsConstants;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.log.DeviceLog;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.network.domain.CleanupDirectory;
import com.unity3d.services.core.network.mapper.HttpRequestToOkHttpRequestKt;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import gatewayprotocol.v1.NativeConfigurationOuterClass;
import gt.i;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.jvm.internal.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.e;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
import ws.f;
/* compiled from: OkHttp3Client.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/services/core/network/core/OkHttp3Client\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,228:1\n1#2:229\n314#3,11:230\n*S KotlinDebug\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/services/core/network/core/OkHttp3Client\n*L\n142#1:230,11\n*E\n"})
/* loaded from: classes7.dex */
public final class OkHttp3Client implements HttpClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MSG_CONNECTION_FAILED = "Network request failed";
    @NotNull
    public static final String MSG_CONNECTION_TIMEOUT = "Network request timeout";
    @NotNull
    public static final String NETWORK_CLIENT_OKHTTP = "okhttp";
    @NotNull
    private final CleanupDirectory cleanupDirectory;
    @NotNull
    private final OkHttpClient client;
    @NotNull
    private final Context context;
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final AlternativeFlowReader isAlternativeFlowReader;
    @NotNull
    private final File okHttpCache;
    @NotNull
    private final SessionRepository sessionRepository;

    /* compiled from: OkHttp3Client.kt */
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
    /* compiled from: OkHttp3Client.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class RequestComplete {
        @Nullable
        private final Object body;
        @NotNull
        private final Response response;

        public RequestComplete(@NotNull Response response, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(response, "response");
            this.response = response;
            this.body = obj;
        }

        public static /* synthetic */ RequestComplete copy$default(RequestComplete requestComplete, Response response, Object obj, int i10, Object obj2) {
            if ((i10 & 1) != 0) {
                response = requestComplete.response;
            }
            if ((i10 & 2) != 0) {
                obj = requestComplete.body;
            }
            return requestComplete.copy(response, obj);
        }

        @NotNull
        public final Response component1() {
            return this.response;
        }

        @Nullable
        public final Object component2() {
            return this.body;
        }

        @NotNull
        public final RequestComplete copy(@NotNull Response response, @Nullable Object obj) {
            Intrinsics.checkNotNullParameter(response, "response");
            return new RequestComplete(response, obj);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof RequestComplete)) {
                return false;
            }
            RequestComplete requestComplete = (RequestComplete) obj;
            if (Intrinsics.areEqual(this.response, requestComplete.response) && Intrinsics.areEqual(this.body, requestComplete.body)) {
                return true;
            }
            return false;
        }

        @Nullable
        public final Object getBody() {
            return this.body;
        }

        @NotNull
        public final Response getResponse() {
            return this.response;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.response.hashCode() * 31;
            Object obj = this.body;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            return hashCode2 + hashCode;
        }

        @NotNull
        public String toString() {
            return "RequestComplete(response=" + this.response + ", body=" + this.body + ')';
        }

        public /* synthetic */ RequestComplete(Response response, Object obj, int i10, DefaultConstructorMarker defaultConstructorMarker) {
            this(response, (i10 & 2) != 0 ? null : obj);
        }
    }

    public OkHttp3Client(@NotNull ISDKDispatchers dispatchers, @NotNull OkHttpClient client, @NotNull Context context, @NotNull SessionRepository sessionRepository, @NotNull CleanupDirectory cleanupDirectory, @NotNull AlternativeFlowReader isAlternativeFlowReader) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sessionRepository, "sessionRepository");
        Intrinsics.checkNotNullParameter(cleanupDirectory, "cleanupDirectory");
        Intrinsics.checkNotNullParameter(isAlternativeFlowReader, "isAlternativeFlowReader");
        this.dispatchers = dispatchers;
        this.client = client;
        this.context = context;
        this.sessionRepository = sessionRepository;
        this.cleanupDirectory = cleanupDirectory;
        this.isAlternativeFlowReader = isAlternativeFlowReader;
        this.okHttpCache = getOkHttpCache();
    }

    private final File getOkHttpCache() {
        File filesDir = this.context.getFilesDir();
        Intrinsics.checkNotNullExpressionValue(filesDir, "context.filesDir");
        File z10 = f.z(filesDir, UnityAdsConstants.DefaultUrls.HTTP_CACHE_DIR_NAME);
        z10.mkdirs();
        if (this.sessionRepository.getNativeConfiguration().hasCachedAssetsConfiguration()) {
            NativeConfigurationOuterClass.CachedAssetsConfiguration cachedAssetsConfiguration = this.sessionRepository.getNativeConfiguration().getCachedAssetsConfiguration();
            this.cleanupDirectory.invoke(z10, cachedAssetsConfiguration.getMaxCachedAssetSizeMb(), cachedAssetsConfiguration.getMaxCachedAssetAgeMs());
        }
        return z10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object makeRequest(final HttpRequest httpRequest, long j10, long j11, long j12, c<? super RequestComplete> cVar) {
        Request okHttpRequest;
        long j13;
        if (httpRequest.isProtobuf()) {
            okHttpRequest = HttpRequestToOkHttpRequestKt.toOkHttpProtoRequest(httpRequest);
        } else {
            okHttpRequest = HttpRequestToOkHttpRequestKt.toOkHttpRequest(httpRequest);
        }
        OkHttpClient.Builder z10 = this.client.z();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        OkHttpClient c10 = z10.f(j10, timeUnit).V(j11, timeUnit).Y(j12, timeUnit).c();
        final File file = new File(this.okHttpCache, StringExtensionsKt.getSHA256Hash(httpRequest.getBaseURL()));
        if (file.exists() && file.isFile()) {
            j13 = file.length();
        } else {
            j13 = 0;
        }
        Long e10 = a.e(j13);
        Request request = null;
        if (e10.longValue() <= 0) {
            e10 = null;
        }
        if (e10 != null) {
            long longValue = e10.longValue();
            DeviceLog.debug("Resuming download for " + httpRequest.getBaseURL());
            request = okHttpRequest.i().a(Command.HTTP_HEADER_RANGE, "bytes=" + longValue + '-').b();
        }
        final e eVar = new e(kotlin.coroutines.intrinsics.a.c(cVar), 1);
        eVar.H();
        if (request != null) {
            okHttpRequest = request;
        }
        c10.a(okHttpRequest).o0(new Callback() { // from class: com.unity3d.services.core.network.core.OkHttp3Client$makeRequest$2$1
            @Override // okhttp3.Callback
            public void onFailure(@NotNull Call call, @NotNull IOException e11) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e11, "e");
                i<OkHttp3Client.RequestComplete> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(kotlin.f.a(e11)));
            }

            /* JADX WARN: Removed duplicated region for block: B:45:0x00fa A[Catch: IOException -> 0x0053, TryCatch #0 {IOException -> 0x0053, blocks: (B:6:0x003a, B:8:0x0042, B:12:0x0056, B:14:0x0069, B:21:0x0079, B:23:0x0081, B:24:0x0084, B:28:0x0092, B:31:0x009e, B:33:0x00a6, B:35:0x00bd, B:37:0x00d1, B:39:0x00d7, B:42:0x00e1, B:43:0x00f4, B:45:0x00fa, B:47:0x0107, B:49:0x010c, B:50:0x0114, B:52:0x0119, B:54:0x011e, B:55:0x0121, B:57:0x012c, B:59:0x0133, B:58:0x012f, B:41:0x00dd), top: B:63:0x003a }] */
            /* JADX WARN: Removed duplicated region for block: B:52:0x0119 A[Catch: IOException -> 0x0053, TryCatch #0 {IOException -> 0x0053, blocks: (B:6:0x003a, B:8:0x0042, B:12:0x0056, B:14:0x0069, B:21:0x0079, B:23:0x0081, B:24:0x0084, B:28:0x0092, B:31:0x009e, B:33:0x00a6, B:35:0x00bd, B:37:0x00d1, B:39:0x00d7, B:42:0x00e1, B:43:0x00f4, B:45:0x00fa, B:47:0x0107, B:49:0x010c, B:50:0x0114, B:52:0x0119, B:54:0x011e, B:55:0x0121, B:57:0x012c, B:59:0x0133, B:58:0x012f, B:41:0x00dd), top: B:63:0x003a }] */
            /* JADX WARN: Removed duplicated region for block: B:54:0x011e A[Catch: IOException -> 0x0053, TryCatch #0 {IOException -> 0x0053, blocks: (B:6:0x003a, B:8:0x0042, B:12:0x0056, B:14:0x0069, B:21:0x0079, B:23:0x0081, B:24:0x0084, B:28:0x0092, B:31:0x009e, B:33:0x00a6, B:35:0x00bd, B:37:0x00d1, B:39:0x00d7, B:42:0x00e1, B:43:0x00f4, B:45:0x00fa, B:47:0x0107, B:49:0x010c, B:50:0x0114, B:52:0x0119, B:54:0x011e, B:55:0x0121, B:57:0x012c, B:59:0x0133, B:58:0x012f, B:41:0x00dd), top: B:63:0x003a }] */
            /* JADX WARN: Removed duplicated region for block: B:57:0x012c A[Catch: IOException -> 0x0053, TryCatch #0 {IOException -> 0x0053, blocks: (B:6:0x003a, B:8:0x0042, B:12:0x0056, B:14:0x0069, B:21:0x0079, B:23:0x0081, B:24:0x0084, B:28:0x0092, B:31:0x009e, B:33:0x00a6, B:35:0x00bd, B:37:0x00d1, B:39:0x00d7, B:42:0x00e1, B:43:0x00f4, B:45:0x00fa, B:47:0x0107, B:49:0x010c, B:50:0x0114, B:52:0x0119, B:54:0x011e, B:55:0x0121, B:57:0x012c, B:59:0x0133, B:58:0x012f, B:41:0x00dd), top: B:63:0x003a }] */
            /* JADX WARN: Removed duplicated region for block: B:58:0x012f A[Catch: IOException -> 0x0053, TryCatch #0 {IOException -> 0x0053, blocks: (B:6:0x003a, B:8:0x0042, B:12:0x0056, B:14:0x0069, B:21:0x0079, B:23:0x0081, B:24:0x0084, B:28:0x0092, B:31:0x009e, B:33:0x00a6, B:35:0x00bd, B:37:0x00d1, B:39:0x00d7, B:42:0x00e1, B:43:0x00f4, B:45:0x00fa, B:47:0x0107, B:49:0x010c, B:50:0x0114, B:52:0x0119, B:54:0x011e, B:55:0x0121, B:57:0x012c, B:59:0x0133, B:58:0x012f, B:41:0x00dd), top: B:63:0x003a }] */
            @Override // okhttp3.Callback
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onResponse(@org.jetbrains.annotations.NotNull okhttp3.Call r14, @org.jetbrains.annotations.NotNull okhttp3.Response r15) {
                /*
                    Method dump skipped, instructions count: 340
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.network.core.OkHttp3Client$makeRequest$2$1.onResponse(okhttp3.Call, okhttp3.Response):void");
            }
        });
        Object B = eVar.B();
        if (B == kotlin.coroutines.intrinsics.a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @Nullable
    public Object execute(@NotNull HttpRequest httpRequest, @NotNull c<? super HttpResponse> cVar) {
        return gt.e.g(this.dispatchers.getIo(), new OkHttp3Client$execute$2(this, httpRequest, null), cVar);
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @NotNull
    public HttpResponse executeBlocking(@NotNull HttpRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return (HttpResponse) gt.e.e(this.dispatchers.getIo(), new OkHttp3Client$executeBlocking$1(this, request, null));
    }
}
