package gc;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
/* compiled from: CurlInterceptor.kt */
@Metadata
/* loaded from: classes6.dex */
public final class d implements Interceptor {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final hc.a f52315a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final c f52316b;

    public d(@NotNull hc.a logger, @NotNull b configuration) {
        Intrinsics.checkNotNullParameter(logger, "logger");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.f52315a = logger;
        this.f52316b = new c(configuration);
    }

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) {
        Intrinsics.checkNotNullParameter(chain, "chain");
        Request request = chain.request();
        this.f52315a.log(this.f52316b.b(request));
        return chain.a(request);
    }

    public /* synthetic */ d(hc.a aVar, b bVar, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(aVar, (i10 & 2) != 0 ? new b(null, null, null, 0L, null, 31, null) : bVar);
    }
}
