package io.ktor.client.plugins;

import at.n;
import io.ktor.client.network.sockets.ConnectTimeoutException;
import io.ktor.client.network.sockets.SocketTimeoutException;
import io.ktor.client.plugins.HttpRequestRetry;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
/* compiled from: HttpRequestRetry.kt */
@Metadata
/* loaded from: classes8.dex */
public final class c {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private static final du.a f59125a = cs.a.a("io.ktor.client.plugins.HttpRequestRetry");
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private static final yr.a<Integer> f59126b = new yr.a<>("MaxRetriesPerRequestAttributeKey");
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private static final yr.a<n<HttpRequestRetry.e, sr.b, tr.c, Boolean>> f59127c = new yr.a<>("ShouldRetryPerRequestAttributeKey");
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private static final yr.a<n<HttpRequestRetry.e, HttpRequestBuilder, Throwable, Boolean>> f59128d = new yr.a<>("ShouldRetryOnExceptionPerRequestAttributeKey");
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private static final yr.a<Function2<HttpRequestRetry.b, HttpRequestBuilder, Unit>> f59129e = new yr.a<>("ModifyRequestPerRequestAttributeKey");
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private static final yr.a<Function2<HttpRequestRetry.a, Integer, Long>> f59130f = new yr.a<>("RetryDelayPerRequestAttributeKey");

    public static final /* synthetic */ boolean g(Throwable th2) {
        return h(th2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean h(Throwable th2) {
        Throwable a10 = ur.c.a(th2);
        if (!(a10 instanceof HttpRequestTimeoutException) && !(a10 instanceof ConnectTimeoutException) && !(a10 instanceof SocketTimeoutException)) {
            return false;
        }
        return true;
    }

    public static final void i(@NotNull HttpRequestBuilder httpRequestBuilder, @NotNull Function1<? super HttpRequestRetry.Configuration, Unit> block) {
        Intrinsics.checkNotNullParameter(httpRequestBuilder, "<this>");
        Intrinsics.checkNotNullParameter(block, "block");
        HttpRequestRetry.Configuration configuration = new HttpRequestRetry.Configuration();
        block.invoke(configuration);
        httpRequestBuilder.c().a(f59127c, configuration.j());
        httpRequestBuilder.c().a(f59128d, configuration.k());
        httpRequestBuilder.c().a(f59130f, configuration.g());
        httpRequestBuilder.c().a(f59126b, Integer.valueOf(configuration.h()));
        httpRequestBuilder.c().a(f59129e, configuration.i());
    }
}
