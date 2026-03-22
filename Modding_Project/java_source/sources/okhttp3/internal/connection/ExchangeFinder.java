package okhttp3.internal.connection;

import androidx.browser.trusted.sharing.ShareTarget;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Address;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: ExchangeFinder.kt */
@Metadata
/* loaded from: classes8.dex */
public final class ExchangeFinder {
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final RealConnectionPool f63782a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final Address f63783b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final RealCall f63784c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final EventListener f63785d;
    @Nullable

    /* renamed from: e  reason: collision with root package name */
    private RouteSelector.Selection f63786e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private RouteSelector f63787f;

    /* renamed from: g  reason: collision with root package name */
    private int f63788g;

    /* renamed from: h  reason: collision with root package name */
    private int f63789h;

    /* renamed from: i  reason: collision with root package name */
    private int f63790i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private Route f63791j;

    public ExchangeFinder(@NotNull RealConnectionPool connectionPool, @NotNull Address address, @NotNull RealCall call, @NotNull EventListener eventListener) {
        Intrinsics.checkNotNullParameter(connectionPool, "connectionPool");
        Intrinsics.checkNotNullParameter(address, "address");
        Intrinsics.checkNotNullParameter(call, "call");
        Intrinsics.checkNotNullParameter(eventListener, "eventListener");
        this.f63782a = connectionPool;
        this.f63783b = address;
        this.f63784c = call;
        this.f63785d = eventListener;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0149  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final okhttp3.internal.connection.RealConnection b(int r15, int r16, int r17, int r18, boolean r19) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.connection.ExchangeFinder.b(int, int, int, int, boolean):okhttp3.internal.connection.RealConnection");
    }

    private final RealConnection c(int i10, int i11, int i12, int i13, boolean z10, boolean z11) throws IOException {
        boolean z12;
        while (true) {
            RealConnection b10 = b(i10, i11, i12, i13, z10);
            if (b10.u(z11)) {
                return b10;
            }
            b10.z();
            if (this.f63791j == null) {
                RouteSelector.Selection selection = this.f63786e;
                boolean z13 = true;
                if (selection != null) {
                    z12 = selection.b();
                } else {
                    z12 = true;
                }
                if (z12) {
                    continue;
                } else {
                    RouteSelector routeSelector = this.f63787f;
                    if (routeSelector != null) {
                        z13 = routeSelector.a();
                    }
                    if (!z13) {
                        throw new IOException("exhausted all routes");
                    }
                }
            }
        }
    }

    private final Route f() {
        RealConnection l10;
        if (this.f63788g > 1 || this.f63789h > 1 || this.f63790i > 0 || (l10 = this.f63784c.l()) == null) {
            return null;
        }
        synchronized (l10) {
            if (l10.q() != 0) {
                return null;
            }
            if (!Util.j(l10.A().a().l(), this.f63783b.l())) {
                return null;
            }
            return l10.A();
        }
    }

    @NotNull
    public final ExchangeCodec a(@NotNull OkHttpClient client, @NotNull RealInterceptorChain chain) {
        Intrinsics.checkNotNullParameter(client, "client");
        Intrinsics.checkNotNullParameter(chain, "chain");
        try {
            return c(chain.e(), chain.g(), chain.i(), client.A(), client.G(), !Intrinsics.areEqual(chain.h().h(), ShareTarget.METHOD_GET)).w(client, chain);
        } catch (IOException e10) {
            h(e10);
            throw new RouteException(e10);
        } catch (RouteException e11) {
            h(e11.e());
            throw e11;
        }
    }

    @NotNull
    public final Address d() {
        return this.f63783b;
    }

    public final boolean e() {
        RouteSelector routeSelector;
        if (this.f63788g == 0 && this.f63789h == 0 && this.f63790i == 0) {
            return false;
        }
        if (this.f63791j != null) {
            return true;
        }
        Route f10 = f();
        if (f10 != null) {
            this.f63791j = f10;
            return true;
        }
        RouteSelector.Selection selection = this.f63786e;
        if ((selection != null && selection.b()) || (routeSelector = this.f63787f) == null) {
            return true;
        }
        return routeSelector.a();
    }

    public final boolean g(@NotNull HttpUrl url) {
        Intrinsics.checkNotNullParameter(url, "url");
        HttpUrl l10 = this.f63783b.l();
        if (url.o() == l10.o() && Intrinsics.areEqual(url.i(), l10.i())) {
            return true;
        }
        return false;
    }

    public final void h(@NotNull IOException e10) {
        Intrinsics.checkNotNullParameter(e10, "e");
        this.f63791j = null;
        if ((e10 instanceof StreamResetException) && ((StreamResetException) e10).f64094a == ErrorCode.REFUSED_STREAM) {
            this.f63788g++;
        } else if (e10 instanceof ConnectionShutdownException) {
            this.f63789h++;
        } else {
            this.f63790i++;
        }
    }
}
