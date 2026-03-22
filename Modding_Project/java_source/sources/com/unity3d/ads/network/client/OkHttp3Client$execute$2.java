package com.unity3d.ads.network.client;

import com.unity3d.ads.network.mapper.HttpRequestToOkHttpRequestKt;
import com.unity3d.ads.network.model.HttpRequest;
import com.unity3d.ads.network.model.HttpResponse;
import gt.g0;
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
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: OkHttp3Client.kt */
@Metadata
@d(c = "com.unity3d.ads.network.client.OkHttp3Client$execute$2", f = "OkHttp3Client.kt", l = {35}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class OkHttp3Client$execute$2 extends SuspendLambda implements Function2<g0, c<? super HttpResponse>, Object> {
    final /* synthetic */ HttpRequest $request;
    int label;
    final /* synthetic */ OkHttp3Client this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OkHttp3Client$execute$2(HttpRequest httpRequest, OkHttp3Client okHttp3Client, c<? super OkHttp3Client$execute$2> cVar) {
        super(2, cVar);
        this.$request = httpRequest;
        this.this$0 = okHttp3Client;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new OkHttp3Client$execute$2(this.$request, this.this$0, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super HttpResponse> cVar) {
        return ((OkHttp3Client$execute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        String str;
        Object f10 = a.f();
        int i10 = this.label;
        if (i10 != 0) {
            if (i10 == 1) {
                f.b(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            f.b(obj);
            Request okHttpRequest = HttpRequestToOkHttpRequestKt.toOkHttpRequest(this.$request);
            this.label = 1;
            obj = this.this$0.makeRequest(okHttpRequest, this.$request.getConnectTimeout(), this.$request.getReadTimeout(), this);
            if (obj == f10) {
                return f10;
            }
        }
        Response response = (Response) obj;
        int o10 = response.o();
        Map<String, List<String>> h10 = response.u().h();
        String httpUrl = response.W().l().toString();
        ResponseBody d10 = response.d();
        if (d10 != null) {
            str = d10.string();
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        Intrinsics.checkNotNullExpressionValue(h10, "toMultimap()");
        Intrinsics.checkNotNullExpressionValue(httpUrl, "toString()");
        return new HttpResponse(str, o10, h10, httpUrl);
    }
}
