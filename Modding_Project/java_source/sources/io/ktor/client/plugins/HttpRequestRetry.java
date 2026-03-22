package io.ktor.client.plugins;

import at.n;
import com.mbridge.msdk.playercommon.exoplayer2.source.chunk.ChunkedTrackBlacklistUtil;
import gt.s;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpRequestRetry;
import io.ktor.client.request.HttpRequestBuilder;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.text.StringsKt;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import wr.f;
import wr.i;
/* compiled from: HttpRequestRetry.kt */
@Metadata
/* loaded from: classes8.dex */
public final class HttpRequestRetry {
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    public static final c f59016g = new c(null);
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private static final yr.a<HttpRequestRetry> f59017h = new yr.a<>("RetryFeature");
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private static final vr.a<d> f59018i = new vr.a<>();
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final n<e, sr.b, tr.c, Boolean> f59019a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final n<e, HttpRequestBuilder, Throwable, Boolean> f59020b;
    @NotNull

    /* renamed from: c  reason: collision with root package name */
    private final Function2<a, Integer, Long> f59021c;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final Function2<Long, rs.c<? super Unit>, Object> f59022d;

    /* renamed from: e  reason: collision with root package name */
    private final int f59023e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final Function2<b, HttpRequestBuilder, Unit> f59024f;

    /* compiled from: HttpRequestRetry.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class Configuration {

        /* renamed from: a  reason: collision with root package name */
        public n<? super e, ? super sr.b, ? super tr.c, Boolean> f59025a;

        /* renamed from: b  reason: collision with root package name */
        public n<? super e, ? super HttpRequestBuilder, ? super Throwable, Boolean> f59026b;

        /* renamed from: c  reason: collision with root package name */
        public Function2<? super a, ? super Integer, Long> f59027c;
        @NotNull

        /* renamed from: d  reason: collision with root package name */
        private Function2<? super b, ? super HttpRequestBuilder, Unit> f59028d = new Function2<b, HttpRequestBuilder, Unit>() { // from class: io.ktor.client.plugins.HttpRequestRetry$Configuration$modifyRequest$1
            public final void b(@NotNull HttpRequestRetry.b bVar, @NotNull HttpRequestBuilder it) {
                Intrinsics.checkNotNullParameter(bVar, "$this$null");
                Intrinsics.checkNotNullParameter(it, "it");
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Unit invoke(HttpRequestRetry.b bVar, HttpRequestBuilder httpRequestBuilder) {
                b(bVar, httpRequestBuilder);
                return Unit.f60915a;
            }
        };
        @NotNull

        /* renamed from: e  reason: collision with root package name */
        private Function2<? super Long, ? super rs.c<? super Unit>, ? extends Object> f59029e = new HttpRequestRetry$Configuration$delay$1(null);

        /* renamed from: f  reason: collision with root package name */
        private int f59030f;

        public Configuration() {
            r(3);
            e(this, 0.0d, 0L, 0L, false, 15, null);
        }

        public static /* synthetic */ void c(Configuration configuration, boolean z10, Function2 function2, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z10 = true;
            }
            configuration.b(z10, function2);
        }

        public static /* synthetic */ void e(Configuration configuration, double d10, long j10, long j11, boolean z10, int i10, Object obj) {
            double d11;
            long j12;
            long j13;
            boolean z11;
            if ((i10 & 1) != 0) {
                d11 = 2.0d;
            } else {
                d11 = d10;
            }
            if ((i10 & 2) != 0) {
                j12 = ChunkedTrackBlacklistUtil.DEFAULT_TRACK_BLACKLIST_MS;
            } else {
                j12 = j10;
            }
            if ((i10 & 4) != 0) {
                j13 = 1000;
            } else {
                j13 = j11;
            }
            if ((i10 & 8) != 0) {
                z11 = true;
            } else {
                z11 = z10;
            }
            configuration.d(d11, j12, j13, z11);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long m(long j10) {
            if (j10 == 0) {
                return 0L;
            }
            return Random.f61065a.j(j10);
        }

        public static /* synthetic */ void p(Configuration configuration, int i10, boolean z10, int i11, Object obj) {
            if ((i11 & 1) != 0) {
                i10 = -1;
            }
            if ((i11 & 2) != 0) {
                z10 = false;
            }
            configuration.o(i10, z10);
        }

        public final void b(final boolean z10, @NotNull final Function2<? super a, ? super Integer, Long> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            t(new Function2<a, Integer, Long>() { // from class: io.ktor.client.plugins.HttpRequestRetry$Configuration$delayMillis$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(2);
                }

                @NotNull
                public final Long b(@NotNull HttpRequestRetry.a aVar, int i10) {
                    long longValue;
                    Long l10;
                    long j10;
                    f a10;
                    String str;
                    Long v10;
                    Intrinsics.checkNotNullParameter(aVar, "$this$null");
                    if (z10) {
                        tr.c a11 = aVar.a();
                        if (a11 != null && (a10 = a11.a()) != null && (str = a10.get(i.f70141a.t())) != null && (v10 = StringsKt.v(str)) != null) {
                            l10 = Long.valueOf(v10.longValue() * 1000);
                        } else {
                            l10 = null;
                        }
                        long longValue2 = block.invoke(aVar, Integer.valueOf(i10)).longValue();
                        if (l10 != null) {
                            j10 = l10.longValue();
                        } else {
                            j10 = 0;
                        }
                        longValue = Math.max(longValue2, j10);
                    } else {
                        longValue = block.invoke(aVar, Integer.valueOf(i10)).longValue();
                    }
                    return Long.valueOf(longValue);
                }

                @Override // kotlin.jvm.functions.Function2
                public /* bridge */ /* synthetic */ Long invoke(HttpRequestRetry.a aVar, Integer num) {
                    return b(aVar, num.intValue());
                }
            });
        }

        public final void d(final double d10, final long j10, final long j11, boolean z10) {
            if (d10 > 0.0d) {
                if (j10 > 0) {
                    if (j11 >= 0) {
                        b(z10, new Function2<a, Integer, Long>() { // from class: io.ktor.client.plugins.HttpRequestRetry$Configuration$exponentialDelay$1
                            /* JADX INFO: Access modifiers changed from: package-private */
                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                            {
                                super(2);
                            }

                            @NotNull
                            public final Long b(@NotNull HttpRequestRetry.a delayMillis, int i10) {
                                long m10;
                                Intrinsics.checkNotNullParameter(delayMillis, "$this$delayMillis");
                                long min = Math.min(((long) Math.pow(d10, i10)) * 1000, j10);
                                m10 = this.m(j11);
                                return Long.valueOf(min + m10);
                            }

                            @Override // kotlin.jvm.functions.Function2
                            public /* bridge */ /* synthetic */ Long invoke(HttpRequestRetry.a aVar, Integer num) {
                                return b(aVar, num.intValue());
                            }
                        });
                        return;
                    }
                    throw new IllegalStateException("Check failed.");
                }
                throw new IllegalStateException("Check failed.");
            }
            throw new IllegalStateException("Check failed.");
        }

        @NotNull
        public final Function2<Long, rs.c<? super Unit>, Object> f() {
            return this.f59029e;
        }

        @NotNull
        public final Function2<a, Integer, Long> g() {
            Function2 function2 = this.f59027c;
            if (function2 != null) {
                return function2;
            }
            Intrinsics.throwUninitializedPropertyAccessException("delayMillis");
            return null;
        }

        public final int h() {
            return this.f59030f;
        }

        @NotNull
        public final Function2<b, HttpRequestBuilder, Unit> i() {
            return this.f59028d;
        }

        @NotNull
        public final n<e, sr.b, tr.c, Boolean> j() {
            n nVar = this.f59025a;
            if (nVar != null) {
                return nVar;
            }
            Intrinsics.throwUninitializedPropertyAccessException("shouldRetry");
            return null;
        }

        @NotNull
        public final n<e, HttpRequestBuilder, Throwable, Boolean> k() {
            n nVar = this.f59026b;
            if (nVar != null) {
                return nVar;
            }
            Intrinsics.throwUninitializedPropertyAccessException("shouldRetryOnException");
            return null;
        }

        public final void l(@NotNull Function2<? super b, ? super HttpRequestBuilder, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            this.f59028d = block;
        }

        public final void n(int i10, @NotNull n<? super e, ? super sr.b, ? super tr.c, Boolean> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            if (i10 != -1) {
                this.f59030f = i10;
            }
            v(block);
        }

        public final void o(int i10, final boolean z10) {
            q(i10, new n<e, HttpRequestBuilder, Throwable, Boolean>() { // from class: io.ktor.client.plugins.HttpRequestRetry$Configuration$retryOnException$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(3);
                }

                @Override // at.n
                @NotNull
                /* renamed from: b */
                public final Boolean invoke(@NotNull HttpRequestRetry.e retryOnExceptionIf, @NotNull HttpRequestBuilder httpRequestBuilder, @NotNull Throwable cause) {
                    boolean z11;
                    Intrinsics.checkNotNullParameter(retryOnExceptionIf, "$this$retryOnExceptionIf");
                    Intrinsics.checkNotNullParameter(httpRequestBuilder, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(cause, "cause");
                    if (c.g(cause)) {
                        z11 = z10;
                    } else if (cause instanceof CancellationException) {
                        z11 = false;
                    } else {
                        z11 = true;
                    }
                    return Boolean.valueOf(z11);
                }
            });
        }

        public final void q(int i10, @NotNull n<? super e, ? super HttpRequestBuilder, ? super Throwable, Boolean> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            if (i10 != -1) {
                this.f59030f = i10;
            }
            w(block);
        }

        public final void r(int i10) {
            s(i10);
            p(this, i10, false, 2, null);
        }

        public final void s(int i10) {
            n(i10, new n<e, sr.b, tr.c, Boolean>() { // from class: io.ktor.client.plugins.HttpRequestRetry$Configuration$retryOnServerErrors$1
                @Override // at.n
                @NotNull
                /* renamed from: b */
                public final Boolean invoke(@NotNull HttpRequestRetry.e retryIf, @NotNull sr.b bVar, @NotNull tr.c response) {
                    Intrinsics.checkNotNullParameter(retryIf, "$this$retryIf");
                    Intrinsics.checkNotNullParameter(bVar, "<anonymous parameter 0>");
                    Intrinsics.checkNotNullParameter(response, "response");
                    int e02 = response.e().e0();
                    boolean z10 = false;
                    if (500 <= e02 && e02 < 600) {
                        z10 = true;
                    }
                    return Boolean.valueOf(z10);
                }
            });
        }

        public final void t(@NotNull Function2<? super a, ? super Integer, Long> function2) {
            Intrinsics.checkNotNullParameter(function2, "<set-?>");
            this.f59027c = function2;
        }

        public final void u(int i10) {
            this.f59030f = i10;
        }

        public final void v(@NotNull n<? super e, ? super sr.b, ? super tr.c, Boolean> nVar) {
            Intrinsics.checkNotNullParameter(nVar, "<set-?>");
            this.f59025a = nVar;
        }

        public final void w(@NotNull n<? super e, ? super HttpRequestBuilder, ? super Throwable, Boolean> nVar) {
            Intrinsics.checkNotNullParameter(nVar, "<set-?>");
            this.f59026b = nVar;
        }
    }

    /* compiled from: HttpRequestRetry.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class a {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HttpRequestBuilder f59042a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final tr.c f59043b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Throwable f59044c;

        public a(@NotNull HttpRequestBuilder request, @Nullable tr.c cVar, @Nullable Throwable th2) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f59042a = request;
            this.f59043b = cVar;
            this.f59044c = th2;
        }

        @Nullable
        public final tr.c a() {
            return this.f59043b;
        }
    }

    /* compiled from: HttpRequestRetry.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class b {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HttpRequestBuilder f59045a;
        @Nullable

        /* renamed from: b  reason: collision with root package name */
        private final tr.c f59046b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final Throwable f59047c;

        /* renamed from: d  reason: collision with root package name */
        private final int f59048d;

        public b(@NotNull HttpRequestBuilder request, @Nullable tr.c cVar, @Nullable Throwable th2, int i10) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f59045a = request;
            this.f59046b = cVar;
            this.f59047c = th2;
            this.f59048d = i10;
        }

        @NotNull
        public final HttpRequestBuilder a() {
            return this.f59045a;
        }

        public final int b() {
            return this.f59048d;
        }
    }

    /* compiled from: HttpRequestRetry.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class c implements qr.d<Configuration, HttpRequestRetry> {
        public /* synthetic */ c(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final vr.a<d> c() {
            return HttpRequestRetry.f59018i;
        }

        @Override // qr.d
        /* renamed from: d */
        public void b(@NotNull HttpRequestRetry plugin, @NotNull HttpClient scope) {
            Intrinsics.checkNotNullParameter(plugin, "plugin");
            Intrinsics.checkNotNullParameter(scope, "scope");
            plugin.l(scope);
        }

        @Override // qr.d
        @NotNull
        /* renamed from: e */
        public HttpRequestRetry a(@NotNull Function1<? super Configuration, Unit> block) {
            Intrinsics.checkNotNullParameter(block, "block");
            Configuration configuration = new Configuration();
            block.invoke(configuration);
            return new HttpRequestRetry(configuration);
        }

        @Override // qr.d
        @NotNull
        public yr.a<HttpRequestRetry> getKey() {
            return HttpRequestRetry.f59017h;
        }

        private c() {
        }
    }

    /* compiled from: HttpRequestRetry.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class d {
        @NotNull

        /* renamed from: a  reason: collision with root package name */
        private final HttpRequestBuilder f59049a;

        /* renamed from: b  reason: collision with root package name */
        private final int f59050b;
        @Nullable

        /* renamed from: c  reason: collision with root package name */
        private final tr.c f59051c;
        @Nullable

        /* renamed from: d  reason: collision with root package name */
        private final Throwable f59052d;

        public d(@NotNull HttpRequestBuilder request, int i10, @Nullable tr.c cVar, @Nullable Throwable th2) {
            Intrinsics.checkNotNullParameter(request, "request");
            this.f59049a = request;
            this.f59050b = i10;
            this.f59051c = cVar;
            this.f59052d = th2;
        }

        @Nullable
        public final Throwable a() {
            return this.f59052d;
        }

        @NotNull
        public final HttpRequestBuilder b() {
            return this.f59049a;
        }

        @Nullable
        public final tr.c c() {
            return this.f59051c;
        }

        public final int d() {
            return this.f59050b;
        }
    }

    /* compiled from: HttpRequestRetry.kt */
    @Metadata
    /* loaded from: classes8.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private final int f59053a;

        public e(int i10) {
            this.f59053a = i10;
        }
    }

    public HttpRequestRetry(@NotNull Configuration configuration) {
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        this.f59019a = configuration.j();
        this.f59020b = configuration.k();
        this.f59021c = configuration.g();
        this.f59022d = configuration.f();
        this.f59023e = configuration.h();
        this.f59024f = configuration.i();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final HttpRequestBuilder m(HttpRequestBuilder httpRequestBuilder) {
        final HttpRequestBuilder o10 = new HttpRequestBuilder().o(httpRequestBuilder);
        httpRequestBuilder.g().invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.plugins.HttpRequestRetry$prepareRequest$1
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th2) {
                invoke2(th2);
                return Unit.f60915a;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th2) {
                r g10 = HttpRequestBuilder.this.g();
                Intrinsics.checkNotNull(g10, "null cannot be cast to non-null type kotlinx.coroutines.CompletableJob");
                s sVar = (s) g10;
                if (th2 == null) {
                    sVar.complete();
                } else {
                    sVar.d(th2);
                }
            }
        });
        return o10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean n(int i10, int i11, n<? super e, ? super sr.b, ? super tr.c, Boolean> nVar, HttpClientCall httpClientCall) {
        if (i10 < i11 && nVar.invoke(new e(i10 + 1), httpClientCall.d(), httpClientCall.e()).booleanValue()) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean o(int i10, int i11, n<? super e, ? super HttpRequestBuilder, ? super Throwable, Boolean> nVar, HttpRequestBuilder httpRequestBuilder, Throwable th2) {
        if (i10 < i11 && nVar.invoke(new e(i10 + 1), httpRequestBuilder, th2).booleanValue()) {
            return true;
        }
        return false;
    }

    public final void l(@NotNull HttpClient client) {
        Intrinsics.checkNotNullParameter(client, "client");
        ((HttpSend) qr.e.b(client, HttpSend.f59067c)).d(new HttpRequestRetry$intercept$1(this, client, null));
    }
}
