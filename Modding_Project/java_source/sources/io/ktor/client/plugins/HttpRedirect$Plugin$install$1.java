package io.ktor.client.plugins;

import at.n;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.plugins.HttpRedirect;
import io.ktor.client.request.HttpRequestBuilder;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.f;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import qr.h;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpRedirect.kt */
@Metadata
@kotlin.coroutines.jvm.internal.d(c = "io.ktor.client.plugins.HttpRedirect$Plugin$install$1", f = "HttpRedirect.kt", l = {64, 69}, m = "invokeSuspend")
/* loaded from: classes8.dex */
public final class HttpRedirect$Plugin$install$1 extends SuspendLambda implements n<h, HttpRequestBuilder, rs.c<? super HttpClientCall>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f59001h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f59002i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f59003j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpRedirect f59004k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ HttpClient f59005l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpRedirect$Plugin$install$1(HttpRedirect httpRedirect, HttpClient httpClient, rs.c<? super HttpRedirect$Plugin$install$1> cVar) {
        super(3, cVar);
        this.f59004k = httpRedirect;
        this.f59005l = httpClient;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull h hVar, @NotNull HttpRequestBuilder httpRequestBuilder, @Nullable rs.c<? super HttpClientCall> cVar) {
        HttpRedirect$Plugin$install$1 httpRedirect$Plugin$install$1 = new HttpRedirect$Plugin$install$1(this.f59004k, this.f59005l, cVar);
        httpRedirect$Plugin$install$1.f59002i = hVar;
        httpRedirect$Plugin$install$1.f59003j = httpRequestBuilder;
        return httpRedirect$Plugin$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        h hVar;
        HttpRequestBuilder httpRequestBuilder;
        boolean z10;
        boolean z11;
        Set set;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f59001h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            f.b(obj);
            httpRequestBuilder = (HttpRequestBuilder) this.f59003j;
            hVar = (h) this.f59002i;
        } else {
            f.b(obj);
            h hVar2 = (h) this.f59002i;
            HttpRequestBuilder httpRequestBuilder2 = (HttpRequestBuilder) this.f59003j;
            this.f59002i = hVar2;
            this.f59003j = httpRequestBuilder2;
            this.f59001h = 1;
            Object a10 = hVar2.a(httpRequestBuilder2, this);
            if (a10 == f10) {
                return f10;
            }
            hVar = hVar2;
            httpRequestBuilder = httpRequestBuilder2;
            obj = a10;
        }
        HttpClientCall httpClientCall = (HttpClientCall) obj;
        z10 = this.f59004k.f58986a;
        if (z10) {
            set = qr.f.f65405a;
            if (!set.contains(httpClientCall.d().getMethod())) {
                return httpClientCall;
            }
        }
        HttpRedirect.Plugin plugin = HttpRedirect.f58983c;
        z11 = this.f59004k.f58987b;
        HttpClient httpClient = this.f59005l;
        this.f59002i = null;
        this.f59003j = null;
        this.f59001h = 2;
        obj = plugin.e(hVar, httpRequestBuilder, httpClientCall, z11, httpClient, this);
        if (obj == f10) {
            return f10;
        }
        return obj;
    }
}
