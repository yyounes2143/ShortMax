package io.ktor.client;

import at.n;
import ds.c;
import gt.g0;
import gt.s;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.plugins.BodyProgress;
import io.ktor.client.plugins.DefaultResponseValidationKt;
import io.ktor.client.plugins.DefaultTransformKt;
import io.ktor.client.plugins.HttpCallValidator;
import io.ktor.client.plugins.HttpPlainText;
import io.ktor.client.plugins.HttpRedirect;
import io.ktor.client.plugins.HttpRequestLifecycle;
import io.ktor.client.plugins.HttpSend;
import io.ktor.client.request.HttpRequestBuilder;
import java.io.Closeable;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.a;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.i;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import or.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.f;
import tr.b;
import tr.e;
/* compiled from: HttpClient.kt */
@Metadata
@SourceDebugExtension({"SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,239:1\n1855#2,2:240\n*S KotlinDebug\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient\n*L\n222#1:240,2\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpClient implements g0, Closeable {

    /* renamed from: n  reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f58747n = AtomicIntegerFieldUpdater.newUpdater(HttpClient.class, "closed");
    @NotNull

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientEngine f58748a;
    @NotNull

    /* renamed from: b  reason: collision with root package name */
    private final HttpClientConfig<? extends d> f58749b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f58750c;
    @NotNull
    private volatile /* synthetic */ int closed;
    @NotNull

    /* renamed from: d  reason: collision with root package name */
    private final s f58751d;
    @NotNull

    /* renamed from: e  reason: collision with root package name */
    private final CoroutineContext f58752e;
    @NotNull

    /* renamed from: f  reason: collision with root package name */
    private final sr.d f58753f;
    @NotNull

    /* renamed from: g  reason: collision with root package name */
    private final e f58754g;
    @NotNull

    /* renamed from: h  reason: collision with root package name */
    private final f f58755h;
    @NotNull

    /* renamed from: i  reason: collision with root package name */
    private final b f58756i;
    @NotNull

    /* renamed from: j  reason: collision with root package name */
    private final yr.b f58757j;
    @NotNull

    /* renamed from: k  reason: collision with root package name */
    private final d f58758k;
    @NotNull

    /* renamed from: l  reason: collision with root package name */
    private final vr.b f58759l;
    @NotNull

    /* renamed from: m  reason: collision with root package name */
    private final HttpClientConfig<d> f58760m;

    /* compiled from: HttpClient.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.HttpClient$2", f = "HttpClient.kt", l = {144, 146}, m = "invokeSuspend")
    @SourceDebugExtension({"SMAP\nHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClient.kt\nio/ktor/client/HttpClient$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,239:1\n1#2:240\n*E\n"})
    /* renamed from: io.ktor.client.HttpClient$2  reason: invalid class name */
    /* loaded from: classes8.dex */
    static final class AnonymousClass2 extends SuspendLambda implements n<c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58762h;

        /* renamed from: i  reason: collision with root package name */
        private /* synthetic */ Object f58763i;

        /* renamed from: j  reason: collision with root package name */
        /* synthetic */ Object f58764j;

        AnonymousClass2(rs.c<? super AnonymousClass2> cVar) {
            super(3, cVar);
        }

        @Override // at.n
        @Nullable
        /* renamed from: i */
        public final Object invoke(@NotNull c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(cVar2);
            anonymousClass2.f58763i = cVar;
            anonymousClass2.f58764j = obj;
            return anonymousClass2.invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            Object obj2;
            c cVar;
            Object f10 = a.f();
            int i10 = this.f58762h;
            if (i10 != 0) {
                if (i10 != 1) {
                    if (i10 == 2) {
                        kotlin.f.b(obj);
                        return Unit.f60915a;
                    }
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                obj2 = this.f58764j;
                cVar = (c) this.f58763i;
                kotlin.f.b(obj);
            } else {
                kotlin.f.b(obj);
                c cVar2 = (c) this.f58763i;
                obj2 = this.f58764j;
                if (obj2 instanceof HttpClientCall) {
                    b o10 = HttpClient.this.o();
                    Unit unit = Unit.f60915a;
                    tr.c e10 = ((HttpClientCall) obj2).e();
                    this.f58763i = cVar2;
                    this.f58764j = obj2;
                    this.f58762h = 1;
                    Object d10 = o10.d(unit, e10, this);
                    if (d10 == f10) {
                        return f10;
                    }
                    cVar = cVar2;
                    obj = d10;
                } else {
                    throw new IllegalStateException(("Error: HttpClientCall expected, but found " + obj2 + '(' + Reflection.getOrCreateKotlinClass(obj2.getClass()) + ").").toString());
                }
            }
            ((HttpClientCall) obj2).j((tr.c) obj);
            this.f58763i = null;
            this.f58764j = null;
            this.f58762h = 2;
            if (cVar.d(obj2, this) == f10) {
                return f10;
            }
            return Unit.f60915a;
        }
    }

    /* compiled from: HttpClient.kt */
    @Metadata
    @kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.HttpClient$4", f = "HttpClient.kt", l = {177}, m = "invokeSuspend")
    /* renamed from: io.ktor.client.HttpClient$4  reason: invalid class name */
    /* loaded from: classes8.dex */
    static final class AnonymousClass4 extends SuspendLambda implements n<c<tr.d, HttpClientCall>, tr.d, rs.c<? super Unit>, Object> {

        /* renamed from: h  reason: collision with root package name */
        int f58767h;

        /* renamed from: i  reason: collision with root package name */
        private /* synthetic */ Object f58768i;

        AnonymousClass4(rs.c<? super AnonymousClass4> cVar) {
            super(3, cVar);
        }

        @Override // at.n
        @Nullable
        /* renamed from: i */
        public final Object invoke(@NotNull c<tr.d, HttpClientCall> cVar, @NotNull tr.d dVar, @Nullable rs.c<? super Unit> cVar2) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(cVar2);
            anonymousClass4.f58768i = cVar;
            return anonymousClass4.invokeSuspend(Unit.f60915a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        @Nullable
        public final Object invokeSuspend(@NotNull Object obj) {
            c cVar;
            Throwable th2;
            Object f10 = a.f();
            int i10 = this.f58767h;
            if (i10 != 0) {
                if (i10 == 1) {
                    cVar = (c) this.f58768i;
                    try {
                        kotlin.f.b(obj);
                    } catch (Throwable th3) {
                        th2 = th3;
                        HttpClient.this.l().a(ur.a.d(), new ur.e(((HttpClientCall) cVar.b()).e(), th2));
                        throw th2;
                    }
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                kotlin.f.b(obj);
                c cVar2 = (c) this.f58768i;
                try {
                    this.f58768i = cVar2;
                    this.f58767h = 1;
                    if (cVar2.c(this) == f10) {
                        return f10;
                    }
                } catch (Throwable th4) {
                    cVar = cVar2;
                    th2 = th4;
                    HttpClient.this.l().a(ur.a.d(), new ur.e(((HttpClientCall) cVar.b()).e(), th2));
                    throw th2;
                }
            }
            return Unit.f60915a;
        }
    }

    public HttpClient(@NotNull HttpClientEngine engine, @NotNull HttpClientConfig<? extends d> userConfig) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(userConfig, "userConfig");
        this.f58748a = engine;
        this.f58749b = userConfig;
        this.closed = 0;
        s a10 = t.a((r) engine.getCoroutineContext().get(r.G8));
        this.f58751d = a10;
        this.f58752e = engine.getCoroutineContext().plus(a10);
        this.f58753f = new sr.d(userConfig.b());
        e eVar = new e(userConfig.b());
        this.f58754g = eVar;
        f fVar = new f(userConfig.b());
        this.f58755h = fVar;
        this.f58756i = new b(userConfig.b());
        this.f58757j = yr.d.a(true);
        this.f58758k = engine.getConfig();
        this.f58759l = new vr.b();
        HttpClientConfig<d> httpClientConfig = new HttpClientConfig<>();
        this.f58760m = httpClientConfig;
        if (this.f58750c) {
            a10.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.HttpClient.1
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
                    if (th2 != null) {
                        i.e(HttpClient.this.k(), null, 1, null);
                    }
                }
            });
        }
        engine.N(this);
        fVar.l(f.f66615h.b(), new AnonymousClass2(null));
        HttpClientConfig.j(httpClientConfig, HttpRequestLifecycle.f59008a, null, 2, null);
        HttpClientConfig.j(httpClientConfig, BodyProgress.f58879a, null, 2, null);
        if (userConfig.f()) {
            httpClientConfig.h("DefaultTransformers", new Function1<HttpClient, Unit>() { // from class: io.ktor.client.HttpClient$3$1
                public final void b(@NotNull HttpClient install) {
                    Intrinsics.checkNotNullParameter(install, "$this$install");
                    DefaultTransformKt.b(install);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(HttpClient httpClient) {
                    b(httpClient);
                    return Unit.f60915a;
                }
            });
        }
        HttpClientConfig.j(httpClientConfig, HttpSend.f59067c, null, 2, null);
        HttpClientConfig.j(httpClientConfig, HttpCallValidator.f58934d, null, 2, null);
        if (userConfig.e()) {
            HttpClientConfig.j(httpClientConfig, HttpRedirect.f58983c, null, 2, null);
        }
        httpClientConfig.k(userConfig);
        if (userConfig.f()) {
            HttpClientConfig.j(httpClientConfig, HttpPlainText.f58966d, null, 2, null);
        }
        DefaultResponseValidationKt.c(httpClientConfig);
        httpClientConfig.g(this);
        eVar.l(e.f67687h.b(), new AnonymousClass4(null));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object a(@org.jetbrains.annotations.NotNull io.ktor.client.request.HttpRequestBuilder r5, @org.jetbrains.annotations.NotNull rs.c<? super io.ktor.client.call.HttpClientCall> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof io.ktor.client.HttpClient$execute$1
            if (r0 == 0) goto L13
            r0 = r6
            io.ktor.client.HttpClient$execute$1 r0 = (io.ktor.client.HttpClient$execute$1) r0
            int r1 = r0.f58772j
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f58772j = r1
            goto L18
        L13:
            io.ktor.client.HttpClient$execute$1 r0 = new io.ktor.client.HttpClient$execute$1
            r0.<init>(r4, r6)
        L18:
            java.lang.Object r6 = r0.f58770h
            java.lang.Object r1 = kotlin.coroutines.intrinsics.a.f()
            int r2 = r0.f58772j
            r3 = 1
            if (r2 == 0) goto L31
            if (r2 != r3) goto L29
            kotlin.f.b(r6)
            goto L4c
        L29:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L31:
            kotlin.f.b(r6)
            vr.b r6 = r4.f58759l
            vr.a r2 = ur.a.a()
            r6.a(r2, r5)
            sr.d r6 = r4.f58753f
            java.lang.Object r2 = r5.d()
            r0.f58772j = r3
            java.lang.Object r6 = r6.d(r5, r2, r0)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            java.lang.String r5 = "null cannot be cast to non-null type io.ktor.client.call.HttpClientCall"
            kotlin.jvm.internal.Intrinsics.checkNotNull(r6, r5)
            io.ktor.client.call.HttpClientCall r6 = (io.ktor.client.call.HttpClientCall) r6
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: io.ktor.client.HttpClient.a(io.ktor.client.request.HttpRequestBuilder, rs.c):java.lang.Object");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (!f58747n.compareAndSet(this, 0, 1)) {
            return;
        }
        yr.b bVar = (yr.b) this.f58757j.d(qr.e.a());
        Iterator<T> it = bVar.b().iterator();
        while (it.hasNext()) {
            yr.a aVar = (yr.a) it.next();
            Intrinsics.checkNotNull(aVar, "null cannot be cast to non-null type io.ktor.util.AttributeKey<kotlin.Any>");
            Object d10 = bVar.d(aVar);
            if (d10 instanceof Closeable) {
                ((Closeable) d10).close();
            }
        }
        this.f58751d.complete();
        if (this.f58750c) {
            this.f58748a.close();
        }
    }

    @NotNull
    public final HttpClientConfig<d> d() {
        return this.f58760m;
    }

    @Override // gt.g0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return this.f58752e;
    }

    @NotNull
    public final HttpClientEngine k() {
        return this.f58748a;
    }

    @NotNull
    public final vr.b l() {
        return this.f58759l;
    }

    @NotNull
    public final yr.b m() {
        return this.f58757j;
    }

    @NotNull
    public final b o() {
        return this.f58756i;
    }

    @NotNull
    public final sr.d p() {
        return this.f58753f;
    }

    @NotNull
    public final e q() {
        return this.f58754g;
    }

    @NotNull
    public final f r() {
        return this.f58755h;
    }

    @NotNull
    public String toString() {
        return "HttpClient[" + this.f58748a + ']';
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public HttpClient(@NotNull HttpClientEngine engine, @NotNull HttpClientConfig<? extends d> userConfig, boolean z10) {
        this(engine, userConfig);
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(userConfig, "userConfig");
        this.f58750c = z10;
    }
}
