package com.vungle.ads.internal.network;

import androidx.annotation.VisibleForTesting;
import com.mbridge.msdk.foundation.download.Command;
import com.unity3d.ads.gatewayclient.CommonGatewayClient;
import com.vungle.ads.internal.model.AdPayload;
import com.vungle.ads.internal.model.CommonRequestBody;
import com.vungle.ads.internal.model.ConfigPayload;
import com.vungle.ads.internal.network.converters.EmptyResponseConverter;
import com.vungle.ads.internal.network.converters.JsonConverter;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.c;
import kotlinx.serialization.json.s;
import okhttp3.Call;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.RequestBody;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import st.t;
/* compiled from: VungleApiImpl.kt */
@Metadata
/* loaded from: classes7.dex */
public final class VungleApiImpl implements VungleApi {
    @NotNull
    private static final String VUNGLE_VERSION = "7.1.0";
    @NotNull
    private final EmptyResponseConverter emptyResponseConverter;
    @NotNull
    private final Call.Factory okHttpClient;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final kotlinx.serialization.json.a json = s.b(null, new Function1<c, Unit>() { // from class: com.vungle.ads.internal.network.VungleApiImpl$Companion$json$1
        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(c cVar) {
            invoke2(cVar);
            return Unit.f60915a;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@NotNull c Json) {
            Intrinsics.checkNotNullParameter(Json, "$this$Json");
            Json.f(true);
            Json.d(true);
            Json.e(false);
            Json.c(true);
        }
    }, 1, null);

    /* compiled from: VungleApiImpl.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    /* compiled from: VungleApiImpl.kt */
    @Metadata
    /* loaded from: classes7.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[HttpMethod.values().length];
            iArr[HttpMethod.GET.ordinal()] = 1;
            iArr[HttpMethod.POST.ordinal()] = 2;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public VungleApiImpl(@NotNull Call.Factory okHttpClient) {
        Intrinsics.checkNotNullParameter(okHttpClient, "okHttpClient");
        this.okHttpClient = okHttpClient;
        this.emptyResponseConverter = new EmptyResponseConverter();
    }

    private final Request.Builder defaultBuilder(String str, String str2, String str3, Map<String, String> map) {
        Request.Builder a10 = new Request.Builder().k(str2).a(Command.HTTP_HEADER_USER_AGENT, str).a("Vungle-Version", VUNGLE_VERSION).a(CommonGatewayClient.HEADER_CONTENT_TYPE, "application/json");
        if (map != null) {
            a10.f(Headers.f63454b.g(map));
        }
        if (str3 != null) {
            a10.a("X-Vungle-Placement-Ref-Id", str3);
        }
        VungleHeader vungleHeader = VungleHeader.INSTANCE;
        String appVersion = vungleHeader.getAppVersion();
        if (appVersion != null) {
            a10.a("X-VUNGLE-APP-VERSION", appVersion);
        }
        String appId = vungleHeader.getAppId();
        if (appId != null) {
            a10.a("X-Vungle-App-Id", appId);
        }
        return a10;
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ Request.Builder defaultBuilder$default(VungleApiImpl vungleApiImpl, String str, String str2, String str3, Map map, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            str3 = null;
        }
        if ((i10 & 8) != 0) {
            map = null;
        }
        return vungleApiImpl.defaultBuilder(str, str2, str3, map);
    }

    private final Request.Builder defaultProtoBufBuilder(String str, HttpUrl httpUrl) {
        Request.Builder a10 = new Request.Builder().l(httpUrl).a(Command.HTTP_HEADER_USER_AGENT, str).a("Vungle-Version", VUNGLE_VERSION).a(CommonGatewayClient.HEADER_CONTENT_TYPE, CommonGatewayClient.HEADER_PROTOBUF);
        VungleHeader vungleHeader = VungleHeader.INSTANCE;
        String appId = vungleHeader.getAppId();
        if (appId != null) {
            a10.a("X-Vungle-App-Id", appId);
        }
        String appVersion = vungleHeader.getAppVersion();
        if (appVersion != null) {
            a10.a("X-VUNGLE-APP-VERSION", appVersion);
        }
        return a10;
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @Nullable
    public Call<AdPayload> ads(@NotNull String ua2, @NotNull String path, @NotNull CommonRequestBody body) {
        String str;
        List<String> placements;
        Intrinsics.checkNotNullParameter(ua2, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            kotlinx.serialization.json.a aVar = json;
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            String a10 = aVar.a(c10, body);
            CommonRequestBody.RequestParam request = body.getRequest();
            if (request != null && (placements = request.getPlacements()) != null) {
                str = (String) CollectionsKt.firstOrNull(placements);
            } else {
                str = null;
            }
            return new OkHttpCall(this.okHttpClient.a(defaultBuilder$default(this, ua2, path, str, null, 8, null).h(RequestBody.Companion.b(a10, null)).b()), new JsonConverter(Reflection.typeOf(AdPayload.class)));
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @Nullable
    public Call<ConfigPayload> config(@NotNull String ua2, @NotNull String path, @NotNull CommonRequestBody body) {
        Intrinsics.checkNotNullParameter(ua2, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            kotlinx.serialization.json.a aVar = json;
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            return new OkHttpCall(this.okHttpClient.a(defaultBuilder$default(this, ua2, path, null, null, 12, null).h(RequestBody.Companion.b(aVar.a(c10, body), null)).b()), new JsonConverter(Reflection.typeOf(ConfigPayload.class)));
        } catch (Exception unused) {
            return null;
        }
    }

    @VisibleForTesting
    @NotNull
    public final Call.Factory getOkHttpClient$vungle_ads_release() {
        return this.okHttpClient;
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> pingTPAT(@NotNull String ua2, @NotNull String url, @NotNull HttpMethod requestType, @Nullable Map<String, String> map, @Nullable RequestBody requestBody) {
        Request b10;
        Intrinsics.checkNotNullParameter(ua2, "ua");
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Request.Builder defaultBuilder$default = defaultBuilder$default(this, ua2, url, null, map, 4, null);
        int i10 = WhenMappings.$EnumSwitchMapping$0[requestType.ordinal()];
        if (i10 != 1) {
            if (i10 == 2) {
                if (requestBody == null) {
                    requestBody = RequestBody.Companion.o(RequestBody.Companion, new byte[0], null, 0, 0, 6, null);
                }
                b10 = defaultBuilder$default.h(requestBody).b();
            } else {
                throw new NoWhenBranchMatchedException();
            }
        } else {
            b10 = defaultBuilder$default.d().b();
        }
        return new OkHttpCall(this.okHttpClient.a(b10), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @Nullable
    public Call<Void> ri(@NotNull String ua2, @NotNull String path, @NotNull CommonRequestBody body) {
        Intrinsics.checkNotNullParameter(ua2, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(body, "body");
        try {
            kotlinx.serialization.json.a aVar = json;
            KSerializer<Object> c10 = t.c(aVar.getSerializersModule(), Reflection.typeOf(CommonRequestBody.class));
            Intrinsics.checkNotNull(c10, "null cannot be cast to non-null type kotlinx.serialization.KSerializer<T of kotlinx.serialization.internal.Platform_commonKt.cast>");
            return new OkHttpCall(this.okHttpClient.a(defaultBuilder$default(this, ua2, path, null, null, 12, null).h(RequestBody.Companion.b(aVar.a(c10, body), null)).b()), this.emptyResponseConverter);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> sendAdMarkup(@NotNull String path, @NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        return new OkHttpCall(this.okHttpClient.a(defaultBuilder$default(this, "debug", HttpUrl.f63457k.d(path).k().c().toString(), null, null, 12, null).h(requestBody).b()), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> sendErrors(@NotNull String ua2, @NotNull String path, @NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(ua2, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        return new OkHttpCall(this.okHttpClient.a(defaultProtoBufBuilder(ua2, HttpUrl.f63457k.d(path).k().c()).h(requestBody).b()), this.emptyResponseConverter);
    }

    @Override // com.vungle.ads.internal.network.VungleApi
    @NotNull
    public Call<Void> sendMetrics(@NotNull String ua2, @NotNull String path, @NotNull RequestBody requestBody) {
        Intrinsics.checkNotNullParameter(ua2, "ua");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(requestBody, "requestBody");
        return new OkHttpCall(this.okHttpClient.a(defaultProtoBufBuilder(ua2, HttpUrl.f63457k.d(path).k().c()).h(requestBody).b()), this.emptyResponseConverter);
    }
}
