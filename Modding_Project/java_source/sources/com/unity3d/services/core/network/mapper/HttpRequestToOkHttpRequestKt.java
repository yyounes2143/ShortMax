package com.unity3d.services.core.network.mapper;

import androidx.credentials.exceptions.publickeycredential.DomExceptionUtils;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.unity3d.services.core.network.model.HttpRequest;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
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
@SourceDebugExtension({"SMAP\nHttpRequestToOkHttpRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/services/core/network/mapper/HttpRequestToOkHttpRequestKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,37:1\n1#2:38\n215#3,2:39\n*S KotlinDebug\n*F\n+ 1 HttpRequestToOkHttpRequest.kt\ncom/unity3d/services/core/network/mapper/HttpRequestToOkHttpRequestKt\n*L\n23#1:39,2\n*E\n"})
/* loaded from: classes7.dex */
public final class HttpRequestToOkHttpRequestKt {
    private static final RequestBody generateOkHttpBody(Object obj) {
        if (obj instanceof byte[]) {
            RequestBody create = RequestBody.create(MediaType.g("text/plain;charset=utf-8"), (byte[]) obj);
            Intrinsics.checkNotNullExpressionValue(create, "create(MediaType.parse(\"…in;charset=utf-8\"), body)");
            return create;
        } else if (obj instanceof String) {
            RequestBody create2 = RequestBody.create(MediaType.g("text/plain;charset=utf-8"), (String) obj);
            Intrinsics.checkNotNullExpressionValue(create2, "create(MediaType.parse(\"…in;charset=utf-8\"), body)");
            return create2;
        } else {
            RequestBody create3 = RequestBody.create(MediaType.g("text/plain;charset=utf-8"), "");
            Intrinsics.checkNotNullExpressionValue(create3, "create(MediaType.parse(\"…lain;charset=utf-8\"), \"\")");
            return create3;
        }
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

    private static final RequestBody generateOkHttpProtobufBody(Object obj) {
        if (obj instanceof byte[]) {
            RequestBody create = RequestBody.create(MediaType.g(CommonGatewayClient.HEADER_PROTOBUF), (byte[]) obj);
            Intrinsics.checkNotNullExpressionValue(create, "create(MediaType.parse(\"…ation/x-protobuf\"), body)");
            return create;
        } else if (obj instanceof String) {
            RequestBody create2 = RequestBody.create(MediaType.g(CommonGatewayClient.HEADER_PROTOBUF), (String) obj);
            Intrinsics.checkNotNullExpressionValue(create2, "create(MediaType.parse(\"…ation/x-protobuf\"), body)");
            return create2;
        } else {
            RequestBody create3 = RequestBody.create(MediaType.g(CommonGatewayClient.HEADER_PROTOBUF), "");
            Intrinsics.checkNotNullExpressionValue(create3, "create(MediaType.parse(\"…ication/x-protobuf\"), \"\")");
            return create3;
        }
    }

    @NotNull
    public static final Request toOkHttpProtoRequest(@NotNull HttpRequest httpRequest) {
        RequestBody requestBody;
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builder = new Request.Builder();
        Request.Builder k10 = builder.k(StringsKt.Q0(StringsKt.w1(httpRequest.getBaseURL(), '/') + '/' + StringsKt.w1(httpRequest.getPath(), '/'), DomExceptionUtils.SEPARATOR));
        String obj = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        if (body != null) {
            requestBody = generateOkHttpProtobufBody(body);
        } else {
            requestBody = null;
        }
        Request b10 = k10.g(obj, requestBody).f(generateOkHttpHeaders(httpRequest)).b();
        Intrinsics.checkNotNullExpressionValue(b10, "Builder()\n    .url(\"${ba…tpHeaders())\n    .build()");
        return b10;
    }

    @NotNull
    public static final Request toOkHttpRequest(@NotNull HttpRequest httpRequest) {
        RequestBody requestBody;
        Intrinsics.checkNotNullParameter(httpRequest, "<this>");
        Request.Builder builder = new Request.Builder();
        Request.Builder k10 = builder.k(StringsKt.Q0(StringsKt.w1(httpRequest.getBaseURL(), '/') + '/' + StringsKt.w1(httpRequest.getPath(), '/'), DomExceptionUtils.SEPARATOR));
        String obj = httpRequest.getMethod().toString();
        Object body = httpRequest.getBody();
        if (body != null) {
            requestBody = generateOkHttpBody(body);
        } else {
            requestBody = null;
        }
        Request b10 = k10.g(obj, requestBody).f(generateOkHttpHeaders(httpRequest)).b();
        Intrinsics.checkNotNullExpressionValue(b10, "Builder()\n    .url(\"${ba…tpHeaders())\n    .build()");
        return b10;
    }
}
