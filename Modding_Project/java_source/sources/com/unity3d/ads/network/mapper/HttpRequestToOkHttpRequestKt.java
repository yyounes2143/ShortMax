package com.unity3d.ads.network.mapper;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.unity3d.ads.network.model.HttpBody;
import com.unity3d.ads.network.model.HttpRequest;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpRequestToOkHttpRequest.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpRequestToOkHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,25:1\n1#2:26\n215#3,2:27\n*S KotlinDebug\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/ads/network/mapper/HttpRequestToOkHttpRequestKt\n*L\n17#1:27,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HttpRequestToOkHttpRequestKt {
    private static final RequestBody generateOkHttpBody(HttpBody httpBody) {
        if (httpBody instanceof HttpBody.StringBody) {
            return RequestBody.create(MediaType.g("text/plain;charset=utf-8"), ((HttpBody.StringBody) httpBody).getContent());
        }
        if (httpBody instanceof HttpBody.ByteArrayBody) {
            return RequestBody.create(MediaType.g("text/plain;charset=utf-8"), ((HttpBody.ByteArrayBody) httpBody).getContent());
        }
        if (httpBody instanceof HttpBody.EmptyBody) {
            return null;
        }
        throw new NoWhenBranchMatchedException();
    }

    private static final Headers generateOkHttpHeaders(HttpRequest httpRequest) {
        Headers.Builder builder = new Headers.Builder();
        for (Map.Entry<String, List<String>> entry : httpRequest.getHeaders().entrySet()) {
            builder.a(entry.getKey(), CollectionsKt.A0(entry.getValue(), ",", null, null, 0, null, null, 62, null));
        }
        Headers f10 = builder.f();
        Intrinsics.checkNotNullExpressionValue(f10, "Builder()\n    .also { he…ng(\",\")) } }\n    .build()");
        return f10;
    }

    @NotNull
    public static final Request toOkHttpRequest(@NotNull HttpRequest httpRequest) {
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builder = new Request.Builder();
        Request b10 = builder.k(StringsKt.Q0(StringsKt.w1(httpRequest.getBaseURL(), '/') + '/' + StringsKt.w1(httpRequest.getPath(), '/'), DomExceptionUtils.SEPARATOR)).g(httpRequest.getMethod().toString(), generateOkHttpBody(httpRequest.getBody())).f(generateOkHttpHeaders(httpRequest)).b();
        Intrinsics.checkNotNullExpressionValue(b10, "Builder()\n    .url(\"${ba…tpHeaders())\n    .build()");
        return b10;
    }
}
