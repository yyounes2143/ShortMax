package com.unity3d.services.core.network.core;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.services.core.domain.ISDKDispatchers;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.network.model.RequestType;
import gt.d1;
import gt.i;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlinx.coroutines.e;
import org.chromium.net.CronetEngine;
import org.chromium.net.CronetException;
import org.chromium.net.NetworkException;
import org.chromium.net.UploadDataProviders;
import org.chromium.net.UrlRequest;
import org.chromium.net.UrlResponseInfo;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: CronetClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nCronetClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CronetClient.kt\ncom/unity3d/services/core/network/core/CronetClient\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n314#2,9:139\n323#2,2:152\n215#3:148\n216#3:151\n1855#4,2:149\n*S KotlinDebug\n*F\n+ 1 CronetClient.kt\ncom/unity3d/services/core/network/core/CronetClient\n*L\n35#1:139,9\n35#1:152,2\n89#1:148\n89#1:151\n90#1:149,2\n*E\n"})
/* loaded from: classes7.dex */
public final class CronetClient implements HttpClient {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final String MSG_CONNECTION_FAILED = "Network request failed";
    @NotNull
    private static final String MSG_CONNECTION_TIMEOUT = "Network request timed out";
    @NotNull
    private static final String NETWORK_CLIENT_CRONET = "cronet";
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final CronetEngine engine;

    /* compiled from: CronetClient.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    public CronetClient(@NotNull CronetEngine engine, @NotNull ISDKDispatchers dispatchers) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        this.engine = engine;
        this.dispatchers = dispatchers;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String buildUrl(HttpRequest httpRequest) {
        return StringsKt.Q0(StringsKt.w1(httpRequest.getBaseURL(), '/') + '/' + StringsKt.w1(httpRequest.getPath(), '/'), DomExceptionUtils.SEPARATOR);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long getContentSize(UrlResponseInfo urlResponseInfo) {
        String str;
        Long v10;
        List<String> list = urlResponseInfo.getAllHeaders().get("Content-Length");
        if (list != null && (str = list.get(0)) != null && (v10 = StringsKt.v(str)) != null) {
            return v10.longValue();
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int getPriority(int i10) {
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 != 2) {
                    return 1;
                }
                return 2;
            }
            return 3;
        }
        return 4;
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @Nullable
    public Object execute(@NotNull HttpRequest httpRequest, @NotNull c<? super HttpResponse> cVar) {
        byte[] bArr;
        final e eVar = new e(a.c(cVar), 1);
        eVar.H();
        final ISDKDispatchers iSDKDispatchers = this.dispatchers;
        final long readTimeout = httpRequest.getReadTimeout();
        UnityAdsUrlRequestCallback unityAdsUrlRequestCallback = new UnityAdsUrlRequestCallback(iSDKDispatchers, readTimeout) { // from class: com.unity3d.services.core.network.core.CronetClient$execute$2$callback$1
            @Override // com.unity3d.services.core.network.core.UnityAdsUrlRequestCallback, org.chromium.net.UrlRequest.Callback
            public void onCanceled(@Nullable UrlRequest urlRequest, @Nullable UrlResponseInfo urlResponseInfo) {
                String str;
                String str2;
                super.onCanceled(urlRequest, urlResponseInfo);
                if (urlResponseInfo != null) {
                    str = urlResponseInfo.getUrl();
                } else {
                    str = null;
                }
                if (urlResponseInfo != null) {
                    str2 = urlResponseInfo.getNegotiatedProtocol();
                } else {
                    str2 = null;
                }
                NetworkTimeoutException networkTimeoutException = new NetworkTimeoutException("Network request timed out", null, null, str, str2, null, "cronet", 38, null);
                i<HttpResponse> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(f.a(networkTimeoutException)));
            }

            @Override // com.unity3d.services.core.network.core.UnityAdsUrlRequestCallback, org.chromium.net.UrlRequest.Callback
            public void onFailed(@Nullable UrlRequest urlRequest, @Nullable UrlResponseInfo urlResponseInfo, @Nullable CronetException cronetException) {
                NetworkException networkException;
                Integer num;
                Integer num2;
                String str;
                super.onFailed(urlRequest, urlResponseInfo, cronetException);
                String str2 = null;
                if (cronetException instanceof NetworkException) {
                    networkException = (NetworkException) cronetException;
                } else {
                    networkException = null;
                }
                if (networkException != null) {
                    num = Integer.valueOf(networkException.getCronetInternalErrorCode());
                } else {
                    num = null;
                }
                if (urlResponseInfo != null) {
                    num2 = Integer.valueOf(urlResponseInfo.getHttpStatusCode());
                } else {
                    num2 = null;
                }
                if (urlResponseInfo != null) {
                    str = urlResponseInfo.getUrl();
                } else {
                    str = null;
                }
                if (urlResponseInfo != null) {
                    str2 = urlResponseInfo.getNegotiatedProtocol();
                }
                UnityAdsNetworkException unityAdsNetworkException = new UnityAdsNetworkException("Network request failed", null, num2, str, str2, num, "cronet", 2, null);
                i<HttpResponse> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(f.a(unityAdsNetworkException)));
            }

            @Override // com.unity3d.services.core.network.core.UnityAdsUrlRequestCallback
            public void onSucceeded(@NotNull UrlRequest request, @NotNull UrlResponseInfo info, @NotNull byte[] bodyBytes) {
                long contentSize;
                Intrinsics.checkNotNullParameter(request, "request");
                Intrinsics.checkNotNullParameter(info, "info");
                Intrinsics.checkNotNullParameter(bodyBytes, "bodyBytes");
                i<HttpResponse> iVar = eVar;
                int httpStatusCode = info.getHttpStatusCode();
                Map<String, List<String>> allHeaders = info.getAllHeaders();
                String url = info.getUrl();
                String negotiatedProtocol = info.getNegotiatedProtocol();
                contentSize = this.getContentSize(info);
                Intrinsics.checkNotNullExpressionValue(allHeaders, "allHeaders");
                Intrinsics.checkNotNullExpressionValue(url, "url");
                Intrinsics.checkNotNullExpressionValue(negotiatedProtocol, "negotiatedProtocol");
                iVar.resumeWith(Result.d(new HttpResponse(bodyBytes, httpStatusCode, allHeaders, url, negotiatedProtocol, "cronet", contentSize)));
            }
        };
        UrlRequest.Builder newUrlRequestBuilder = this.engine.newUrlRequestBuilder(buildUrl(httpRequest), unityAdsUrlRequestCallback, d1.a(this.dispatchers.getIo()));
        for (Map.Entry<String, List<String>> entry : httpRequest.getHeaders().entrySet()) {
            String key = entry.getKey();
            for (String str : entry.getValue()) {
                newUrlRequestBuilder.addHeader(key, str);
            }
        }
        if (httpRequest.getMethod() == RequestType.POST) {
            Object body = httpRequest.getBody();
            if (body instanceof byte[]) {
                bArr = (byte[]) httpRequest.getBody();
            } else if (body instanceof String) {
                bArr = ((String) httpRequest.getBody()).getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bArr, "this as java.lang.String).getBytes(charset)");
            } else {
                bArr = new byte[0];
            }
            newUrlRequestBuilder.setUploadDataProvider(UploadDataProviders.create(bArr), d1.a(this.dispatchers.getIo()));
        }
        final UrlRequest req = newUrlRequestBuilder.setHttpMethod(httpRequest.getMethod().toString()).setPriority(getPriority(httpRequest.getPriority())).build();
        eVar.u(new Function1<Throwable, Unit>() { // from class: com.unity3d.services.core.network.core.CronetClient$execute$2$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                UrlRequest.this.cancel();
            }
        });
        Intrinsics.checkNotNullExpressionValue(req, "req");
        unityAdsUrlRequestCallback.startTimer(req);
        req.start();
        Object B = eVar.B();
        if (B == a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Override // com.unity3d.services.core.network.core.HttpClient
    @NotNull
    public HttpResponse executeBlocking(@NotNull HttpRequest request) {
        Intrinsics.checkNotNullParameter(request, "request");
        return (HttpResponse) gt.e.e(this.dispatchers.getIo(), new CronetClient$executeBlocking$1(this, request, null));
    }

    public final void shutdown() {
        this.engine.shutdown();
    }
}
