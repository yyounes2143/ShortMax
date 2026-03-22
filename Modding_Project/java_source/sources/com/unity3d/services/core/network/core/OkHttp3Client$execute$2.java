package com.unity3d.services.core.network.core;

import com.unity3d.ads.core.configuration.AlternativeFlowReader;
import com.unity3d.ads.core.data.model.exception.NetworkTimeoutException;
import com.unity3d.ads.core.data.model.exception.UnityAdsNetworkException;
import com.unity3d.services.core.network.core.OkHttp3Client;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import gt.g0;
import java.io.File;
import java.io.IOException;
import java.net.SocketTimeoutException;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: OkHttp3Client.kt */
@Metadata
@d(c = "com.unity3d.services.core.network.core.OkHttp3Client$execute$2", f = "OkHttp3Client.kt", l = {74}, m = "invokeSuspend")
/* loaded from: classes7.dex */
public final class OkHttp3Client$execute$2 extends SuspendLambda implements Function2<g0, c<? super HttpResponse>, Object> {
    final /* synthetic */ HttpRequest $request;
    int label;
    final /* synthetic */ OkHttp3Client this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttp3Client$execute$2(OkHttp3Client okHttp3Client, HttpRequest httpRequest, c<? super OkHttp3Client$execute$2> cVar) {
        super(2, cVar);
        this.this$0 = okHttp3Client;
        this.$request = httpRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new OkHttp3Client$execute$2(this.this$0, this.$request, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super HttpResponse> cVar) {
        return ((OkHttp3Client$execute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object makeRequest;
        AlternativeFlowReader alternativeFlowReader;
        Object obj2;
        Object f10 = a.f();
        int i10 = this.label;
        try {
            if (i10 != 0) {
                if (i10 == 1) {
                    f.b(obj);
                    makeRequest = obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                f.b(obj);
                OkHttp3Client okHttp3Client = this.this$0;
                HttpRequest httpRequest = this.$request;
                this.label = 1;
                makeRequest = okHttp3Client.makeRequest(httpRequest, httpRequest.getConnectTimeout(), this.$request.getReadTimeout(), this.$request.getWriteTimeout(), this);
                if (makeRequest == f10) {
                    return f10;
                }
            }
            OkHttp3Client.RequestComplete requestComplete = (OkHttp3Client.RequestComplete) makeRequest;
            Response component1 = requestComplete.component1();
            Object component2 = requestComplete.component2();
            alternativeFlowReader = this.this$0.isAlternativeFlowReader;
            if (!alternativeFlowReader.invoke()) {
                if (component2 instanceof File) {
                    component2 = ws.f.m((File) component2, null, 1, null);
                } else if (!(component2 instanceof byte[])) {
                    component2 = "";
                } else {
                    component2 = new String((byte[]) component2, Charsets.UTF_8);
                }
            }
            int o10 = component1.o();
            Map<String, List<String>> h10 = component1.u().h();
            String httpUrl = component1.W().l().toString();
            if (component2 == null) {
                obj2 = "";
            } else {
                obj2 = component2;
            }
            String protocol = component1.R().toString();
            Intrinsics.checkNotNullExpressionValue(h10, "toMultimap()");
            Intrinsics.checkNotNullExpressionValue(httpUrl, "toString()");
            Intrinsics.checkNotNullExpressionValue(protocol, "toString()");
            return new HttpResponse(obj2, o10, h10, httpUrl, protocol, OkHttp3Client.NETWORK_CLIENT_OKHTTP, 0L, 64, null);
        } catch (SocketTimeoutException unused) {
            throw new NetworkTimeoutException("Network request timeout", null, null, this.$request.getBaseURL(), null, null, OkHttp3Client.NETWORK_CLIENT_OKHTTP, 54, null);
        } catch (IOException unused2) {
            throw new UnityAdsNetworkException("Network request failed", null, null, this.$request.getBaseURL(), null, null, OkHttp3Client.NETWORK_CLIENT_OKHTTP, 54, null);
        }
    }
}
