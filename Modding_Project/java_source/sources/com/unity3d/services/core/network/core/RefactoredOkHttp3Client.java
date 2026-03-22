package com.unity3d.services.core.network.core;

import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import gt.e;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.OkHttpClient;
import org.jetbrains.annotations.NotNull;
/* compiled from: RefactoredOkHttp3Client.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRefactoredOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RefactoredOkHttp3Client.kt\ncom/unity3d/services/core/network/core/RefactoredOkHttp3Client\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,118:1\n314#2,11:119\n*S KotlinDebug\n*F\n+ 1 RefactoredOkHttp3Client.kt\ncom/unity3d/services/core/network/core/RefactoredOkHttp3Client\n*L\n56#1:119,11\n*E\n"})
/* loaded from: classes7.dex */
public final class RefactoredOkHttp3Client implements HttpClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    public static final String MSG_CONNECTION_FAILED = "Network request failed";
    @NotNull
    public static final String MSG_CONNECTION_TIMEOUT = "Network request timeout";
    @NotNull
    public static final String NETWORK_CLIENT_OKHTTP = "refactored-okhttp";
    @NotNull
    private final OkHttpClient client;
    @NotNull
    private final ISDKDispatchers dispatchers;

    /* compiled from: RefactoredOkHttp3Client.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public RefactoredOkHttp3Client(@NotNull ISDKDispatchers dispatchers, @NotNull OkHttpClient client) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(client, "client");
        this.dispatchers = dispatchers;
        this.client = client;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x003d  */
    @Override // com.unity3d.services.core.network.core.HttpClient
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object execute(@org.jetbrains.annotations.NotNull com.unity3d.services.core.network.model.HttpRequest r11, @org.jetbrains.annotations.NotNull rs.c<? super com.unity3d.services.core.network.model.HttpResponse> r12) {
        /*
            r10 = this;
            boolean r0 = r12 instanceof com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1
            if (r0 == 0) goto L13
            r0 = r12
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1 r0 = (com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1 r0 = new com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$1
            r0.<init>(r10, r12)
        L18:
            java.lang.Object r12 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L3d
            if (r2 != r3) goto L35
            java.lang.Object r11 = r0.L$2
            okhttp3.OkHttpClient r11 = (okhttp3.OkHttpClient) r11
            java.lang.Object r11 = r0.L$1
            okhttp3.Request r11 = (okhttp3.Request) r11
            java.lang.Object r11 = r0.L$0
            com.unity3d.services.core.network.model.HttpRequest r11 = (com.unity3d.services.core.network.model.HttpRequest) r11
            kotlin.f.b(r12)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            goto La3
        L35:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            r11.<init>(r12)
            throw r11
        L3d:
            kotlin.f.b(r12)
            okhttp3.Request r12 = com.unity3d.services.core.network.mapper.HttpRequestToOkHttpRequestKt.toOkHttpProtoRequest(r11)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.OkHttpClient r2 = r10.client     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.OkHttpClient$Builder r2 = r2.z()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            int r4 = r11.getConnectTimeout()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            long r4 = (long) r4     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            java.util.concurrent.TimeUnit r6 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.OkHttpClient$Builder r2 = r2.f(r4, r6)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            int r4 = r11.getReadTimeout()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            long r4 = (long) r4     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.OkHttpClient$Builder r2 = r2.V(r4, r6)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            int r4 = r11.getWriteTimeout()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            long r4 = (long) r4     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.OkHttpClient$Builder r2 = r2.Y(r4, r6)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.OkHttpClient r2 = r2.c()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r0.L$0 = r11     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r0.L$1 = r12     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r0.L$2 = r2     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r0.label = r3     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            kotlinx.coroutines.e r4 = new kotlinx.coroutines.e     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            rs.c r5 = kotlin.coroutines.intrinsics.a.c(r0)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r4.<init>(r5, r3)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r4.H()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            okhttp3.Call r12 = r2.a(r12)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$1 r2 = new com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$1     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r2.<init>()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r4.u(r2)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$2 r2 = new com.unity3d.services.core.network.core.RefactoredOkHttp3Client$execute$2$2     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r2.<init>()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            r12.o0(r2)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            java.lang.Object r12 = r4.B()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            java.lang.Object r2 = kotlin.coroutines.intrinsics.a.f()     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
            if (r12 != r2) goto La0
            kotlin.coroutines.jvm.internal.f.c(r0)     // Catch: java.io.IOException -> La4 java.net.SocketTimeoutException -> Lba
        La0:
            if (r12 != r1) goto La3
            return r1
        La3:
            return r12
        La4:
            com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException r12 = new com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException
            java.lang.String r4 = r11.getBaseURL()
            r8 = 54
            r9 = 0
            java.lang.String r1 = "Network request failed"
            r2 = 0
            r3 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "refactored-okhttp"
            r0 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            throw r12
        Lba:
            com.unity3d.ads.core.data.model.exception.NetworkTimeoutException r12 = new com.unity3d.ads.core.data.model.exception.NetworkTimeoutException
            java.lang.String r4 = r11.getBaseURL()
            r8 = 54
            r9 = 0
            java.lang.String r1 = "Network request timeout"
            r2 = 0
            r3 = 0
            r5 = 0
            r6 = 0
            java.lang.String r7 = "refactored-okhttp"
            r0 = r12
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8, r9)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.unity3d.services.core.network.core.RefactoredOkHttp3Client.execute(com.unity3d.services.core.network.model.HttpRequest, rs.c):java.lang.Object");
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @NotNull
    public HttpResponse executeBlocking(@NotNull HttpRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return (HttpResponse) e.e(this.dispatchers.getIo(), new RefactoredOkHttp3Client$executeBlocking$1(this, request, null));
    }
}
