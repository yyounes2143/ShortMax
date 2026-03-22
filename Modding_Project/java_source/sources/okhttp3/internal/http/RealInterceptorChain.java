package okhttp3.internal.http;

import java.io.IOException;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: RealInterceptorChain.kt */
@Metadata
@SourceDebugExtension({"SMAP\nRealInterceptorChain.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealInterceptorChain.kt\nokhttp3/internal/http/RealInterceptorChain\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,123:1\n1#2:124\n*E\n"})
/* loaded from: classes8.dex */
public final class RealInterceptorChain implements Interceptor.Chain {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final RealCall f63868a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final List<Interceptor> f63869b;

    /* renamed from: c  reason: collision with root package name */
    private final int f63870c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private final Exchange f63871d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final Request f63872e;

    /* renamed from: f  reason: collision with root package name */
    private final int f63873f;

    /* renamed from: g  reason: collision with root package name */
    private final int f63874g;

    /* renamed from: h  reason: collision with root package name */
    private final int f63875h;

    /* renamed from: i  reason: collision with root package name */
    private int f63876i;

    /* JADX WARN: Multi-variable type inference failed */
    public RealInterceptorChain(@NotNull RealCall call, @NotNull List<? extends Interceptor> interceptors, int i10, @Nullable Exchange exchange, @NotNull Request request, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(interceptors, "interceptors");
        Intrinsics.checkNotNullParameter(request, "request");
        this.f63868a = call;
        this.f63869b = interceptors;
        this.f63870c = i10;
        this.f63871d = exchange;
        this.f63872e = request;
        this.f63873f = i11;
        this.f63874g = i12;
        this.f63875h = i13;
    }

    public static /* synthetic */ RealInterceptorChain c(RealInterceptorChain realInterceptorChain, int i10, Exchange exchange, Request request, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 1) != 0) {
            i10 = realInterceptorChain.f63870c;
        }
        if ((i14 & 2) != 0) {
            exchange = realInterceptorChain.f63871d;
        }
        Exchange exchange2 = exchange;
        if ((i14 & 4) != 0) {
            request = realInterceptorChain.f63872e;
        }
        Request request2 = request;
        if ((i14 & 8) != 0) {
            i11 = realInterceptorChain.f63873f;
        }
        int i15 = i11;
        if ((i14 & 16) != 0) {
            i12 = realInterceptorChain.f63874g;
        }
        int i16 = i12;
        if ((i14 & 32) != 0) {
            i13 = realInterceptorChain.f63875h;
        }
        return realInterceptorChain.b(i10, exchange2, request2, i15, i16, i13);
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Response a(@NotNull Request request) throws IOException {
        Intrinsics.checkNotNullParameter(request, "request");
        if (this.f63870c < this.f63869b.size()) {
            this.f63876i++;
            Exchange exchange = this.f63871d;
            if (exchange != null) {
                if (exchange.j().g(request.l())) {
                    if (this.f63876i != 1) {
                        throw new IllegalStateException(("network interceptor " + this.f63869b.get(this.f63870c - 1) + " must call proceed() exactly once").toString());
                    }
                } else {
                    throw new IllegalStateException(("network interceptor " + this.f63869b.get(this.f63870c - 1) + " must retain the same host and port").toString());
                }
            }
            RealInterceptorChain c10 = c(this, this.f63870c + 1, null, request, 0, 0, 0, 58, null);
            Interceptor interceptor = this.f63869b.get(this.f63870c);
            Response intercept = interceptor.intercept(c10);
            if (intercept != null) {
                if (this.f63871d != null && this.f63870c + 1 < this.f63869b.size() && c10.f63876i != 1) {
                    throw new IllegalStateException(("network interceptor " + interceptor + " must call proceed() exactly once").toString());
                } else if (intercept.d() != null) {
                    return intercept;
                } else {
                    throw new IllegalStateException(("interceptor " + interceptor + " returned a response with no body").toString());
                }
            }
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        throw new IllegalStateException("Check failed.");
    }

    @NotNull
    public final RealInterceptorChain b(int i10, @Nullable Exchange exchange, @NotNull Request request, int i11, int i12, int i13) {
        Intrinsics.checkNotNullParameter(request, "request");
        return new RealInterceptorChain(this.f63868a, this.f63869b, i10, exchange, request, i11, i12, i13);
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Call call() {
        return this.f63868a;
    }

    @Override // okhttp3.Interceptor.Chain
    @Nullable
    public Connection connection() {
        Exchange exchange = this.f63871d;
        if (exchange != null) {
            return exchange.h();
        }
        return null;
    }

    @NotNull
    public final RealCall d() {
        return this.f63868a;
    }

    public final int e() {
        return this.f63873f;
    }

    @Nullable
    public final Exchange f() {
        return this.f63871d;
    }

    public final int g() {
        return this.f63874g;
    }

    @NotNull
    public final Request h() {
        return this.f63872e;
    }

    public final int i() {
        return this.f63875h;
    }

    public int j() {
        return this.f63874g;
    }

    @Override // okhttp3.Interceptor.Chain
    @NotNull
    public Request request() {
        return this.f63872e;
    }
}
