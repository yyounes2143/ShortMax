package com.unity3d.ads.network.client;

import com.unity3d.ads.network.HttpClient;
import com.unity3d.ads.network.model.HttpRequest;
import com.unity3d.ads.network.model.HttpResponse;
import com.unity3d.services.core.domain.ISDKDispatchers;
import gt.i;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.intrinsics.a;
import kotlin.f;
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
/* compiled from: OkHttp3Client.kt */
@Metadata
@SourceDebugExtension({"SMAP\nOkHttp3Client.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/ads/network/client/OkHttp3Client\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,65:1\n314#2,11:66\n*S KotlinDebug\n*F\n+ 1 OkHttp3Client.kt\ncom/unity3d/ads/network/client/OkHttp3Client\n*L\n48#1:66,11\n*E\n"})
/* loaded from: classes7.dex */
public final class OkHttp3Client implements HttpClient {
    @NotNull
    private final OkHttpClient client;
    @NotNull
    private final ISDKDispatchers dispatchers;

    public OkHttp3Client(@NotNull ISDKDispatchers dispatchers, @NotNull OkHttpClient client) {
        Intrinsics.checkNotNullParameter(dispatchers, "dispatchers");
        Intrinsics.checkNotNullParameter(client, "client");
        this.dispatchers = dispatchers;
        this.client = client;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object makeRequest(Request request, long j10, long j11, c<? super Response> cVar) {
        final e eVar = new e(a.c(cVar), 1);
        eVar.H();
        OkHttpClient.Builder z10 = this.client.z();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        z10.f(j10, timeUnit).V(j11, timeUnit).c().a(request).o0(new Callback() { // from class: com.unity3d.ads.network.client.OkHttp3Client$makeRequest$2$1
            @Override // okhttp3.Callback
            public void onFailure(@NotNull Call call, @NotNull IOException e10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(e10, "e");
                i<Response> iVar = eVar;
                Result.a aVar = Result.f60901b;
                iVar.resumeWith(Result.d(f.a(e10)));
            }

            @Override // okhttp3.Callback
            public void onResponse(@NotNull Call call, @NotNull Response response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                eVar.resumeWith(Result.d(response));
            }
        });
        Object B = eVar.B();
        if (B == a.f()) {
            kotlin.coroutines.jvm.internal.f.c(cVar);
        }
        return B;
    }

    @Override // com.unity3d.ads.network.HttpClient
    @Nullable
    public Object execute(@NotNull HttpRequest httpRequest, @NotNull c<? super HttpResponse> cVar) {
        return gt.e.g(this.dispatchers.getIo(), new OkHttp3Client$execute$2(httpRequest, this, null), cVar);
    }
}
