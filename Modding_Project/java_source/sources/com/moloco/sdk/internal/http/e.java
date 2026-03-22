package com.moloco.sdk.internal.http;

import com.moloco.sdk.internal.services.i0;
import com.moloco.sdk.internal.services.w;
import com.moloco.sdk.publisher.Moloco;
import io.ktor.client.HttpClient;
import io.ktor.client.HttpClientConfig;
import io.ktor.client.plugins.DefaultRequest;
import io.ktor.client.plugins.DefaultRequestKt;
import io.ktor.client.plugins.HttpRequestRetry;
import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.plugins.UserAgent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import wr.g;
/* loaded from: classes6.dex */
public final class e {
    @NotNull
    public static final HttpClient a(@NotNull final w appInfo, @NotNull final i0 deviceInfo) {
        Intrinsics.checkNotNullParameter(appInfo, "appInfo");
        Intrinsics.checkNotNullParameter(deviceInfo, "deviceInfo");
        return mr.b.a(new Function1() { // from class: com.moloco.sdk.internal.http.a
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.b(w.this, deviceInfo, (HttpClientConfig) obj);
            }
        });
    }

    public static final Unit b(final w wVar, final i0 i0Var, HttpClientConfig HttpClient) {
        Intrinsics.checkNotNullParameter(HttpClient, "$this$HttpClient");
        HttpClient.i(UserAgent.f59110b, new Function1() { // from class: com.moloco.sdk.internal.http.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.e((UserAgent.a) obj);
            }
        });
        HttpClientConfig.j(HttpClient, HttpTimeout.f59087d, null, 2, null);
        HttpClientConfig.j(HttpClient, HttpRequestRetry.f59016g, null, 2, null);
        DefaultRequestKt.b(HttpClient, new Function1() { // from class: com.moloco.sdk.internal.http.c
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.c(w.this, i0Var, (DefaultRequest.a) obj);
            }
        });
        return Unit.f60915a;
    }

    public static final Unit c(final w wVar, final i0 i0Var, DefaultRequest.a defaultRequest) {
        Intrinsics.checkNotNullParameter(defaultRequest, "$this$defaultRequest");
        io.ktor.client.request.a.a(defaultRequest, new Function1() { // from class: com.moloco.sdk.internal.http.d
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return e.d(w.this, i0Var, (g) obj);
            }
        });
        return Unit.f60915a;
    }

    public static final Unit d(w wVar, i0 i0Var, g headers) {
        Intrinsics.checkNotNullParameter(headers, "$this$headers");
        headers.f("X-Moloco-App-Info", "AppBundle/" + wVar.a() + "; AppVersion/" + wVar.b() + "; AppKey/" + Moloco.INSTANCE.getAppKey$moloco_sdk_release() + ';');
        headers.f("X-Moloco-Device-Info", "make/" + i0Var.f() + "; model/" + i0Var.h() + "; hwv/" + i0Var.d() + "; osv/" + i0Var.j() + "; OS/Android;");
        headers.f("X-Moloco-SDK-Info", "SdkVersion/4.0.0");
        return Unit.f60915a;
    }

    public static final Unit e(UserAgent.a install) {
        Intrinsics.checkNotNullParameter(install, "$this$install");
        install.b(com.moloco.sdk.xenoss.sdkdevkit.android.core.e.b().invoke());
        return Unit.f60915a;
    }
}
