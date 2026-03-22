package io.ktor.client.plugins;

import at.n;
import gt.g;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpTimeout;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.r;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.h;
import wr.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpTimeout.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpTimeout$Plugin$install$1", f = "HttpTimeout.kt", l = {146, 174}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpTimeout$Plugin$install$1 extends SuspendLambda implements n<h, HttpRequestBuilder, rs.c<? super HttpClientCall>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59092h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f59093i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59094j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpTimeout f59095k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ HttpClient f59096l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpTimeout$Plugin$install$1(HttpTimeout httpTimeout, HttpClient httpClient, rs.c<? super HttpTimeout$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f59095k = httpTimeout;
        this.f59096l = httpClient;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull h hVar, @NotNull HttpRequestBuilder httpRequestBuilder, @Nullable rs.c<? super HttpClientCall> cVar) {
        HttpTimeout$Plugin$install$1 httpTimeout$Plugin$install$1 = new HttpTimeout$Plugin$install$1(this.f59095k, this.f59096l, cVar);
        httpTimeout$Plugin$install$1.f59093i = hVar;
        httpTimeout$Plugin$install$1.f59094j = httpRequestBuilder;
        return httpTimeout$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        final r d10;
        boolean f10;
        Object f11 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59092h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            return obj;
        }
        f.b(obj);
        h hVar = (h) this.f59093i;
        HttpRequestBuilder httpRequestBuilder = (HttpRequestBuilder) this.f59094j;
        if (!t.b(httpRequestBuilder.i().o())) {
            httpRequestBuilder.d();
            HttpTimeout.Plugin plugin = HttpTimeout.f59087d;
            HttpTimeout.a aVar = (HttpTimeout.a) httpRequestBuilder.f(plugin);
            if (aVar == null) {
                f10 = this.f59095k.f();
                if (f10) {
                    aVar = new HttpTimeout.a(null, null, null, 7, null);
                    httpRequestBuilder.l(plugin, aVar);
                }
            }
            if (aVar != null) {
                HttpTimeout httpTimeout = this.f59095k;
                HttpClient httpClient = this.f59096l;
                Long c10 = aVar.c();
                if (c10 == null) {
                    c10 = httpTimeout.f59090b;
                }
                aVar.f(c10);
                Long e10 = aVar.e();
                if (e10 == null) {
                    e10 = httpTimeout.f59091c;
                }
                aVar.h(e10);
                Long d11 = aVar.d();
                if (d11 == null) {
                    d11 = httpTimeout.f59089a;
                }
                aVar.g(d11);
                Long d12 = aVar.d();
                if (d12 == null) {
                    d12 = httpTimeout.f59089a;
                }
                if (d12 != null && d12.longValue() != Long.MAX_VALUE) {
                    d10 = g.d(httpClient, null, null, new HttpTimeout$Plugin$install$1$1$killer$1(d12, httpRequestBuilder, httpRequestBuilder.g(), null), 3, null);
                    httpRequestBuilder.g().invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.plugins.HttpTimeout$Plugin$install$1$1$1
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
                            r.a.b(r.this, null, 1, null);
                        }
                    });
                }
            }
            this.f59093i = null;
            this.f59092h = 2;
            obj = hVar.a(httpRequestBuilder, this);
            if (obj == f11) {
                return f11;
            }
            return obj;
        }
        this.f59093i = null;
        this.f59092h = 1;
        obj = hVar.a(httpRequestBuilder, this);
        if (obj == f11) {
            return f11;
        }
        return obj;
    }
}
