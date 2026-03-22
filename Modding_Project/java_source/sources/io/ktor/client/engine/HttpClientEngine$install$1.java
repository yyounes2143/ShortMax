package io.ktor.client.engine;

import at.n;
import ds.c;
import es.b;
import io.ktor.client.HttpClient;
import io.ktor.client.call.HttpClientCall;
import io.ktor.client.engine.HttpClientEngine;
import io.ktor.client.request.HttpRequestBuilder;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.coroutines.jvm.internal.d;
import kotlin.f;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.reflect.KType;
import kotlin.reflect.TypesJVMKt;
import kotlinx.coroutines.r;
import kotlinx.coroutines.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import sr.e;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HttpClientEngine.kt */
@Metadata
@d(c = "io.ktor.client.engine.HttpClientEngine$install$1", f = "HttpClientEngine.kt", l = {70, 82}, m = "invokeSuspend")
@SourceDebugExtension({"SMAP\nHttpClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$install$1\n+ 2 RequestBody.kt\nio/ktor/client/request/RequestBodyKt\n+ 3 TypeInfoJvm.kt\nio/ktor/util/reflect/TypeInfoJvmKt\n*L\n1#1,163:1\n16#2,4:164\n21#2,10:171\n17#3,3:168\n*S KotlinDebug\n*F\n+ 1 HttpClientEngine.kt\nio/ktor/client/engine/HttpClientEngine$install$1\n*L\n58#1:164,4\n58#1:171,10\n58#1:168,3\n*E\n"})
/* loaded from: classes8.dex */
public final class HttpClientEngine$install$1 extends SuspendLambda implements n<c<Object, HttpRequestBuilder>, Object, rs.c<? super Unit>, Object> {

    /* renamed from: h  reason: collision with root package name */
    int f58821h;

    /* renamed from: i  reason: collision with root package name */
    private /* synthetic */ Object f58822i;

    /* renamed from: j  reason: collision with root package name */
    /* synthetic */ Object f58823j;

    /* renamed from: k  reason: collision with root package name */
    final /* synthetic */ HttpClient f58824k;

    /* renamed from: l  reason: collision with root package name */
    final /* synthetic */ HttpClientEngine f58825l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HttpClientEngine$install$1(HttpClient httpClient, HttpClientEngine httpClientEngine, rs.c<? super HttpClientEngine$install$1> cVar) {
        super(3, cVar);
        this.f58824k = httpClient;
        this.f58825l = httpClientEngine;
    }

    @Override // at.n
    @Nullable
    /* renamed from: i */
    public final Object invoke(@NotNull c<Object, HttpRequestBuilder> cVar, @NotNull Object obj, @Nullable rs.c<? super Unit> cVar2) {
        HttpClientEngine$install$1 httpClientEngine$install$1 = new HttpClientEngine$install$1(this.f58824k, this.f58825l, cVar2);
        httpClientEngine$install$1.f58822i = cVar;
        httpClientEngine$install$1.f58823j = obj;
        return httpClientEngine$install$1.invokeSuspend(Unit.f60915a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        sr.c b10;
        Object e10;
        c cVar;
        Object f10 = kotlin.coroutines.intrinsics.a.f();
        int i10 = this.f58821h;
        if (i10 != 0) {
            if (i10 != 1) {
                if (i10 == 2) {
                    f.b(obj);
                    return Unit.f60915a;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            b10 = (sr.c) this.f58823j;
            cVar = (c) this.f58822i;
            f.b(obj);
        } else {
            f.b(obj);
            c cVar2 = (c) this.f58822i;
            Object obj2 = this.f58823j;
            HttpRequestBuilder httpRequestBuilder = new HttpRequestBuilder();
            httpRequestBuilder.p((HttpRequestBuilder) cVar2.b());
            if (obj2 == null) {
                httpRequestBuilder.j(xr.a.f70524a);
                KType typeOf = Reflection.typeOf(Object.class);
                httpRequestBuilder.k(b.b(TypesJVMKt.getJavaType(typeOf), Reflection.getOrCreateKotlinClass(Object.class), typeOf));
            } else if (obj2 instanceof xr.b) {
                httpRequestBuilder.j(obj2);
                httpRequestBuilder.k(null);
            } else {
                httpRequestBuilder.j(obj2);
                KType typeOf2 = Reflection.typeOf(Object.class);
                httpRequestBuilder.k(b.b(TypesJVMKt.getJavaType(typeOf2), Reflection.getOrCreateKotlinClass(Object.class), typeOf2));
            }
            this.f58824k.l().a(ur.a.b(), httpRequestBuilder);
            b10 = httpRequestBuilder.b();
            b10.a().a(or.f.c(), this.f58824k.d());
            or.f.d(b10);
            HttpClientEngine.DefaultImpls.d(this.f58825l, b10);
            HttpClientEngine httpClientEngine = this.f58825l;
            this.f58822i = cVar2;
            this.f58823j = b10;
            this.f58821h = 1;
            e10 = HttpClientEngine.DefaultImpls.e(httpClientEngine, b10, this);
            if (e10 == f10) {
                return f10;
            }
            cVar = cVar2;
            obj = e10;
        }
        HttpClientCall httpClientCall = new HttpClientCall(this.f58824k, b10, (e) obj);
        final tr.c e11 = httpClientCall.e();
        this.f58824k.l().a(ur.a.e(), e11);
        r m10 = t.m(e11.getCoroutineContext());
        final HttpClient httpClient = this.f58824k;
        m10.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: io.ktor.client.engine.HttpClientEngine$install$1.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                    HttpClient.this.l().a(ur.a.c(), e11);
                }
            }
        });
        this.f58822i = null;
        this.f58823j = null;
        this.f58821h = 2;
        if (cVar.d(httpClientCall, this) == f10) {
            return f10;
        }
        return Unit.f60915a;
    }
}
