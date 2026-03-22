package com.unity3d.services.core.network.core;

import com.unity3d.services.core.network.mapper.HttpRequestToWebRequestKt;
import com.unity3d.services.core.network.model.HttpRequest;
import com.unity3d.services.core.network.model.HttpResponse;
import com.unity3d.services.core.request.WebRequest;
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
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import rs.c;
/* compiled from: LegacyHttpClient.kt */
@Metadata
@d(c = "com.unity3d.services.core.network.core.LegacyHttpClient$execute$2", f = "LegacyHttpClient.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes7.dex */
final class LegacyHttpClient$execute$2 extends SuspendLambda implements Function2<g0, c<? super HttpResponse>, Object> {
    final /* synthetic */ HttpRequest $request;
    int label;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LegacyHttpClient$execute$2(HttpRequest httpRequest, c<? super LegacyHttpClient$execute$2> cVar) {
        super(2, cVar);
        this.$request = httpRequest;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @NotNull
    public final c<Unit> create(@Nullable Object obj, @NotNull c<?> cVar) {
        return new LegacyHttpClient$execute$2(this.$request, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    @Nullable
    public final Object invoke(@NotNull g0 g0Var, @Nullable c<? super HttpResponse> cVar) {
        return ((LegacyHttpClient$execute$2) create(g0Var, cVar)).invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        a.f();
        if (this.label == 0) {
            f.b(obj);
            WebRequest webRequest = HttpRequestToWebRequestKt.toWebRequest(this.$request);
            String makeRequest = webRequest.makeRequest();
            int responseCode = webRequest.getResponseCode();
            Map<String, List<String>> headers = webRequest.getHeaders();
            String url = webRequest.getUrl().toString();
            if (makeRequest == null) {
                makeRequest = "";
            }
            Intrinsics.checkNotNullExpressionValue(headers, "headers");
            Intrinsics.checkNotNullExpressionValue(url, "toString()");
            return new HttpResponse(makeRequest, responseCode, headers, url, null, "legacy", 0L, 80, null);
        }
        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
    }
}
